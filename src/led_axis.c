/**
 * @brief FTF Zephyr DEMO open led device driver and use acc result to light it
 */

#include <stdio.h>
#include <stdint.h>
#include <zephyr.h>
#include <misc/printk.h>
#include <device.h>
#include <gpio.h>

/* define acc scale factor for +- 4g */
#define ACC_CONVERSION_FACTOR_4G 0.000488f

/* gpio device driver instances */
struct device *gpiob_dev;
struct device *gpioe_dev;

/* instance a semaphore */
K_SEM_DEFINE(sync,0,1);


/**
 * @brief light led when accelerometer gets aligned
 */
void led_thread (void)
{
	extern int16_t x;
	extern int16_t y;
	extern int16_t z;


	gpiob_dev = device_get_binding("GPIO_1");
	if(gpiob_dev != NULL) {
		printk("Opened gpio driver succesfull! \n\r");
	} else {
		printk("Failed to  open gpio driver! \n\r");
		return;
	}

	gpioe_dev = device_get_binding("GPIO_4");
	if(gpioe_dev != NULL) {
		printk("Opened gpio driver succesfull! \n\r");
	} else {
		printk("Failed to  open gpio driver! \n\r");
		return;
	}


	gpio_pin_configure(gpiob_dev, 22, GPIO_DIR_OUT);
	gpio_pin_configure(gpiob_dev, 21, GPIO_DIR_OUT);
	gpio_pin_configure(gpioe_dev, 26, GPIO_DIR_OUT);

	gpio_pin_write(gpiob_dev, 22, 1);
	gpio_pin_write(gpiob_dev, 21, 1);
	gpio_pin_write(gpioe_dev, 26, 1);



	for(;;){
		volatile float gx, gy, gz;

		/* waits for a semaphore from accel */
		k_sem_take(&sync, TICKS_UNLIMITED);

		/* calculate the acceleration based in g value */
		gx = (float)x * ACC_CONVERSION_FACTOR_4G;
		gy = (float)y * ACC_CONVERSION_FACTOR_4G;
		gz = (float)z * ACC_CONVERSION_FACTOR_4G;

		if((gx > 0.9f) || (gx < -0.9f)) {
			gpio_pin_write(gpiob_dev, 22, 0);
		} else {
			gpio_pin_write(gpiob_dev, 22, 1);
		}

		if((gy > 0.9f) || (gy < -0.9f)) {
			gpio_pin_write(gpioe_dev, 26, 0);
		} else {
			gpio_pin_write(gpioe_dev, 26, 1);
		}

		if((gz > 0.9f) || (gz < -0.9f)) {
			gpio_pin_write(gpiob_dev, 21, 0);
		} else {
			gpio_pin_write(gpiob_dev, 21, 1);
		}

	}
}


