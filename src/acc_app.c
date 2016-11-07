/**
 * 		FTF Connect 2016 - Zephyr RTOS demo
 *
 *	 @brief acelerometer readings thread application
 *
 */

#include <stdio.h>
#include <stdint.h>
#include <zephyr.h>
#include <misc/printk.h>
#include <device.h>
#include <i2c.h>

#include "acc_board_def.h"



/** defines the read period of acc task */
#define ACC_TASK_EXEC_PERIOD 200

/** define the full scale acceleration convesion factor */
#define ACC_CONVERSION_FACTOR_4G 0.000488f

/* i2c acelerometer device instance */
struct device *acc_wire_dev = NULL;

extern struct k_sem sync;


/* accelerometer typical variables */
int16_t x = 0;
int16_t y = 0;
int16_t z = 0;



/**
 * @brief accelerometer thread application
 */
void acc_thread(void)
{
	int rc = 0;
	uint8_t acc_whoami;

	/* open i2c used to accelerometer */
	acc_wire_dev = device_get_binding("I2C_0");
	if(acc_wire_dev == NULL) {
		printk("acc_thread: failed to open the acc_device \n\r");
		return;
	}else{
		printk("acc_thread: opened the acc_device \n\r");
	}

	int dev_cfg = I2C_SPEED_FAST << 1 | I2C_MODE_MASTER;

	/* configure the i2c */
	rc = i2c_configure(acc_wire_dev, dev_cfg);

	if(rc != 0) {
		printk("acc_thread: failed to configure the accel i2c as master \n\r");
		return;
	} else {
		printk("acc_thread: configured the accel interface, speed: %s \n\r",
					((dev_cfg >> 1 & I2C_SPEED_FAST) != 0 ? "400kbps": "100kbps" ));
	}


	/* check if the accel is up */
	rc = i2c_burst_read(acc_wire_dev,FXOS8700CQ_SLAVE_ADDR1,FXOS8700CQ_WHOAMI,
							&acc_whoami, sizeof(acc_whoami));

	if(rc != 0) {
		printk("acc_thread: acc failed to read FXOS8700CQ_WHOAMI\n\r");
		return;
	} else {
		printk("acc_thread: acc read %d bytes from FXOS8700CQ_WHOAMI \n\r", sizeof(acc_whoami));
	}

	/* is who am I expected value? */
	if(acc_whoami != FXOS8700CQ_WHOAMI_VAL) {
		printk("acc_thread: warning, accel whoami is invalid! \n\r");
	}

	printk("acc_thread: configuring! \n\r");

	/* do a basic configuration on accel */
	{
		uint8_t data_buf[8] = {0};

		/* suspend the acc */
		rc = i2c_reg_write_byte(acc_wire_dev, FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_CTRL_REG1, 0);

		if(rc != 0) {
			printk("acc_thread: acc failed to write FXOS8700CQ_CTRL_REG1\n\r");
			return;
		} else {
			printk("acc_thread: acc wrote %d bytes into FXOS8700CQ_CTRL_REG1 \n\r", sizeof(data_buf[0]));
		}

		/*
		 * configure the acc as:
		 *
		 * - sleep rate of 12.5Hz
		 * - ODR of 400Hz/200Hz hybrid
		 * - low power sleep oversampling mode
		 * - low noise, low power oversampling mode
		 *
		 */
		data_buf[1] = 0;
		data_buf[2] = 0x1F;
		data_buf[3] = 0x20;
		data_buf[4] = 0x01;

		rc = i2c_reg_write_byte(acc_wire_dev, FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_CTRL_REG1, data_buf[1]);
		if(rc != 0) {
			printk("acc_thread: failed to write to acc register! \n\r");
			return;
		} else {
			printk("acc_thread: successful  write to acc register! \n\r");
		}
		rc = i2c_reg_write_byte(acc_wire_dev, FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_M_CTRL_REG1, data_buf[2]);
		if(rc != 0) {
			printk("acc_thread: failed to write to acc register! \n\r");
			return;

		} else {
			printk("acc_thread: successful  write to acc register! \n\r");
		}

		rc = i2c_reg_write_byte(acc_wire_dev, FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_M_CTRL_REG2, data_buf[3]);
		if(rc != 0) {
			printk("acc_thread: failed to write to acc register! \n\r");
			return;

		} else {
			printk("acc_thread: successful  write to acc register! \n\r");
		}

		rc = i2c_reg_write_byte(acc_wire_dev, FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_XYZ_DATA_CFG, data_buf[4]);
		if(rc != 0) {
			printk("acc_thread: failed to write to acc register! \n\r");
			return;

		} else {
			printk("acc_thread: successful  write to acc register! \n\r");
		}


		data_buf[0] = 0x0D;
		rc = i2c_reg_write_byte(acc_wire_dev,FXOS8700CQ_SLAVE_ADDR1,FXOS8700CQ_CTRL_REG1,data_buf[0]);
		if(rc != 0) {
			printk("acc_thread: failed to write to acc register! \n\r");
			return;

		} else {
			printk("acc_thread: successful  write to acc register! \n\r");
		}
	}

	printk("acc_thread: acc is configured and ready to operate \n\r");


	for(;;) {

		volatile float gx, gy, gz;

		uint8_t acc_raw_data[7] = {0};
		rc = i2c_burst_read(acc_wire_dev,FXOS8700CQ_SLAVE_ADDR1, FXOS8700CQ_STATUS,
				&acc_raw_data[0], sizeof(acc_raw_data));

		if(rc != 0) {
			printk("acc_thread: failed to read the accelerometer acc registrers! \n\r");
		} else {
			printk("acc_thread: read the acc from register in accelerometer! \n\r \n\r \n\r");
		}


		/* printts the accel status */
		printk("acc_thread: accelerometer status is: 0x%x \n\r", acc_raw_data[0]);

		/* obtain the raw accelerations */
		x = (int16_t)(((acc_raw_data[1] << 8) | acc_raw_data[2]))>> 2;
		y = (int16_t)(((acc_raw_data[3] << 8) | acc_raw_data[4]))>> 2;
		z = (int16_t)(((acc_raw_data[5] << 8) | acc_raw_data[6]))>> 2;


		/* calculate the acceleration based in g value */
		gx = (float)x * ACC_CONVERSION_FACTOR_4G;
		gy = (float)y * ACC_CONVERSION_FACTOR_4G;
		gz = (float)z * ACC_CONVERSION_FACTOR_4G;


		/* show the current readings */
		printf("acc_thread: x axis raw reading: %f \n\r", gx);
		printf("acc_thread: y axis raw reading: %f \n\r", gy);
		printf("acc_thread: z axis raw reading: %f \n\r", gz);

		k_sem_give(&sync);

		/* wait for next executions */
		task_sleep(ACC_TASK_EXEC_PERIOD);
	}
}


