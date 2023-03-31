/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: board.h
 * Description: Board GPIO assigments
 * Created on: 05 jun. 2022
 * Last modified date: 20 Aug. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *
 ******************************************************************************/

#define BOARD DDRC_ESP32

#define BOOT_BUTTON    0

/* Define GPIO */
/* LEDs */
#define LED1    33
#define LED2    25
#define LED3    26
#define LED4    27

/* LEDs Externos */
#define LED_EXT1    2
#define LED_EXT2    4

#define GPIO_OUTPUT_LEDS ((1ULL<<LED1) | (1ULL<<LED2) | (1ULL<<LED3) | (1ULL<<LED4))
#define GPIO_OUTPUT_LEDS_EXT ((1ULL<<LED_EXT1) | (1ULL<<LED_EXT2) ) 
#define GPIO_OUTPUT_PIN_SEL  (GPIO_OUTPUT_LEDS | GPIO_OUTPUT_LEDS_EXT)

/* PULSADORES */
#define PUL1    34
#define PUL2    35
#define PUL3    32

#define GPIO_INPUT_PIN_SEL  ((1ULL<<PUL1) | (1ULL<<PUL2) | (1ULL<<PUL3))


/* ENCODERS */
#define ENC_IZQ_A   18
#define ENC_IZQ_B   5
#define ENC_DER_A   17
#define ENC_DER_B   16

/* PWM MOTORES */
#define PWM_IZQ     22
#define PWM_DER     19

/* Habilitacion MOTORES */
#define EN_MOT_IZQ  23
#define EN_MOT_DER  21

#define ENABLE_MOTOR_MASK  ((1ULL<<EN_MOT_IZQ) | (1ULL<<EN_MOT_DER))

/* Ruedas */
#define RUEDA_IZQ      0
#define RUEDA_DER      1


