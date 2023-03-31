/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: adc_bat.h
 * Description: ADC Battery level read
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

#ifndef ADC_BAT_H
#define ADC_BAT_H

 
#include <stdio.h>
#include <stdlib.h>
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/adc.h"
#include "esp_adc_cal.h"


#define	TASK_BATTERY_LEVEL_STACK_SIZE	2048
#define DEFAULT_VREF    1100        //Use adc2_vref_to_gpio() to obtain a better estimate
#define NO_OF_SAMPLES   64          //Multisampling

#define BATERIA1        1
#define BATERIA2        2

/*

    Measurement for the calculation of Adaptation Equation

 15V-  -        *
               /    
              /
             /   <-- Adaptation curve
            /   
           /
 9V-   -  *
          ·     ·
          |  |  |
          A  x  B   [mV]
          
    V_bat = (((15000-9000) / (B-A)) * (x - A) + 9000) / 1000
*/

// ADC mV measue value for V_bat = 9V
#define BAT1_A_VALUE     740
#define BAT2_A_VALUE     740 
// ADC mV measue value for V_bat = 15V
#define BAT1_B_VALUE     2240
#define BAT2_B_VALUE     2240


void check_efuse(void);

/**
* @brief   Print eFuse type
*
* @param   - val_type   esp_adc_cal_value_t type value
*
* @return  - void
* 
*/
void print_char_val_type(esp_adc_cal_value_t val_type);


/**
* @brief   COnfig ADC channels and start task_battery_level()
*
* @param   - void
*
* @return  - void
* 
*/
void adc_init(void);

/**
* @brief   Task for update Battery level status
*
* @param   - void
*
* @return  - void
* 
*/
void task_battery_level(void *arg);

/**
* @brief   Write the values of the global variables bat1_val and bat2_val
*               (to show on web page)
*
* @param    -float voltage1: Voltage of Battery 1, in V
*           -float voltage2: Voltage of Battery 2, in V
*
* @return  - void
* 
*/
void battery_voltage_set(float voltage1, float voltage2);

/**
* @brief   Read the values of the global variables bat1_val and bat2_val
*
* @param   -int Battery number: BATERIA1 or BATERIA2
*
* @return  -float Battery Voltage value (Votls)
* 
*/
float battery_voltage_get(int battery);

#endif /* ADC_BAT_H */
