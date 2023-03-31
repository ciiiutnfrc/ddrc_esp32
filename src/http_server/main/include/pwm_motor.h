/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: pwm_motor.h
 * Description: Definitions for PWM motor control driver
 * Created on: 05 jun. 2022
 * Last modified date: 05 jun. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#ifndef PWM_MOTOR_H
#define PWM_MOTOR_H


#include <stdio.h>
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gptimer.h"
#include "driver/mcpwm.h"
#include "board.h"

#define SERIAL_STUDIO_DEBUG           0

#define BDC_MCPWM_UNIT                0     // Selec MCPWM (hay 2)
#define BDC_MCPWM_TIMER               0     // selec timer (hay 3)
#define BDC_MCPWM_GENA_GPIO_NUM       PWM_IZQ // GPIO de salida para PWM A
#define BDC_MCPWM_GENB_GPIO_NUM       PWM_DER // GPIO de Salida para PWM B 
#define BDC_MCPWM_FREQ_HZ             20000  // Frec de trabajo del PWM 


/**
* @brief    Set the duty cycle of Left or Rigth motors
*
* @param   	- duty_cycle : float from 0 to 100. 0 to max reverse, 50 for stop, 
*                           100 for max to direct velocity
*           - wheel :   RUEDA_IZQ or RUEDA_DER
*
* @return  
*          - void
*/
void pwm_motor_set_duty(float duty_cycle, int wheel);

/**
* @brief    Enable motor drivers
*
* @param   	- void
*
* @return  
*           - void
*/
void pwm_motor_enable( void );

/**
* @brief    Disable motor drivers
*
* @param   	- void
*
* @return  
*           - void
*/
void pwm_motor_stop( void );

/**
* @brief    Move forward, with a fixed 75% Duty Cycle
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move_forward( void );

/**
* @brief    Move back, with a fixed 25% Duty Cycle
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move_back( void );

/**
* @brief    Rotate robot to the left
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_rotate_left( void );

/**
* @brief    Rotate robot to the right
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_rotate_right( void );

/**
* @brief    Move motors with fixed duty cycles for ever wheel
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move(float duty_left, float duty_right);

/**
* @brief    init the PWM unit
*
* @param   	- void
*           
* @return  
*          - void
*/
void pwm_motor_init(void);

#endif /* PWM_MOTOR_H */
