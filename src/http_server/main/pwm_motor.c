/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: pwm_motor.c
 * Description: Functions for PWM motor control driver
 * Created on: 05 jun. 2022
 * Last modified date: 21 Aug. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#include "driver/gpio.h"
#include "pwm_motor.h"
static const char *TAG = "pwm_motor";


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
void pwm_motor_set_duty(float duty_cycle, int wheel)
{
    /* motor moves with duty cycle = duty % */
    if ((duty_cycle >= 0) && (duty_cycle <= 100)) {
        if(wheel == RUEDA_IZQ){
            //mcpwm_set_signal_low(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_A);
            mcpwm_set_duty(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_A, duty_cycle);
            mcpwm_set_duty_type(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_A, MCPWM_DUTY_MODE_0);
            ESP_LOGI(TAG, "IZQ = %.2f Duty",duty_cycle);
        }
        if(wheel == RUEDA_DER){
            //mcpwm_set_signal_low(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_A);
            mcpwm_set_duty(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_B, duty_cycle);
            mcpwm_set_duty_type(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, MCPWM_OPR_B, MCPWM_DUTY_MODE_0);
            ESP_LOGI(TAG, "DER = %.2f Duty",duty_cycle);
        }
    }
}


/**
* @brief    Enable motor drivers
*
* @param   	- void
*
* @return  
*           - void
*/
void pwm_motor_enable( void ){
    gpio_set_level(EN_MOT_IZQ, 0);
    gpio_set_level(EN_MOT_DER, 0);
}


/**
* @brief    Disable motor drivers
*
* @param   	- void
*
* @return  
*           - void
*/
void pwm_motor_stop( void ){
    gpio_set_level(EN_MOT_IZQ, 1);
    gpio_set_level(EN_MOT_DER, 1);
    pwm_motor_set_duty(50, RUEDA_IZQ);
    pwm_motor_set_duty(50, RUEDA_DER);
    
}


/**
* @brief    Move forward, with a fixed 75% Duty Cycle
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move_forward( void ){
       float duty_forward = 25.0;
       pwm_motor_move(duty_forward, duty_forward);
}


/**
* @brief    Move back, with a fixed 25% Duty Cycle
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move_back( void ){
       float duty_back= 75.0;
       pwm_motor_move(duty_back, duty_back);
}

/**
* @brief    Rotate to the left
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_rotate_left( void ){
       float duty_left = 25.0;
       float duty_right = 75.0;
       pwm_motor_move(duty_left, duty_right);
}


/**
* @brief    Rotate to the right
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_rotate_right( void ){
       float duty_left = 75.0;
       float duty_right = 25.0;
       pwm_motor_move(duty_left, duty_right);
}


/**
* @brief    Move motors with fixed duty cycles for ever wheel
*
* @param   	- void
*
* @return  
*          - void
*/
void pwm_motor_move(float duty_left, float duty_right){
       pwm_motor_stop();
       pwm_motor_set_duty(duty_left, RUEDA_IZQ);
       pwm_motor_set_duty(duty_right, RUEDA_DER);
       pwm_motor_enable();
}


/**
* @brief    init the PWM unit
*
* @param   	- void
*           
* @return  
*          - void
*/
void pwm_motor_init(void)
{
    // GPIO config on gpio_conf.c

    // MOTOR IZQ
    ESP_LOGI(TAG, "configure mcpwm Left gpio A\n");
    mcpwm_gpio_init(BDC_MCPWM_UNIT, MCPWM0A, BDC_MCPWM_GENA_GPIO_NUM);
    // MOTOR DER
    ESP_LOGI(TAG, "configure mcpwm Right gpio B\n");
    mcpwm_gpio_init(BDC_MCPWM_UNIT, MCPWM0B, BDC_MCPWM_GENB_GPIO_NUM);
    ESP_LOGI(TAG, "init mcpwm driver\n");
    
    
    // MCPWM config struct
    mcpwm_config_t pwm_config = {
        .frequency = BDC_MCPWM_FREQ_HZ,
        .cmpr_a = 0,
        .cmpr_b = 0,
        .counter_mode = MCPWM_UP_COUNTER,
        .duty_mode = MCPWM_DUTY_MODE_0, // Active high duty
    };
    ESP_ERROR_CHECK(mcpwm_init(BDC_MCPWM_UNIT, BDC_MCPWM_TIMER, &pwm_config));

    ESP_LOGI(TAG, "init motor control timer\r\n");
    gptimer_handle_t gptimer;
    gptimer_config_t timer_config = {
        .clk_src = GPTIMER_CLK_SRC_APB,
        .direction = GPTIMER_COUNT_UP,
        .resolution_hz = 1000000, // 1MHz, 1 tick = 1us
    };
    ESP_ERROR_CHECK(gptimer_new_timer(&timer_config, &gptimer));
    pwm_motor_stop();
}


