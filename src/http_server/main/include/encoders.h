/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: encoders.h
 * Description: Functions for read and parce the wheel's encoders
 * Created on: 12 jun. 2022
 * Last modified date: 12 jun. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/


#ifndef ENCODERS_H
#define ENCODERS_H

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "rotary_encoder.h"


#define TASK_ENCODERS_VEL_STACK_SIZE    1024
#define ENC_IZQ_A           18
#define ENC_IZQ_B           5
#define ENC_DER_A           17
#define ENC_DER_B           16

#define ENCODER1_STEPS      1000
#define ENCODER2_STEPS      1000


/**
* @brief   Task for calculate angular velocity
*
* @param   - void
*
* @return  - void
* 
*/
void task_encoders_vel(void *arg);


/**
* @brief    Init the encoders
*
* @param   	- void
*
* @return  
*          - void
*/
void encoders_init(void);

#endif /* ENCODERS_H */
