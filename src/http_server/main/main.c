/******************************************************************************
 * Project: DDRC HTTP SERVER
 * File: main.c
 * Description: Main function
 * Created on: 05 jun. 2022
 * Last modified date: 21 Aug. 2022
 * Version: 0.0.1
 *
 * Este archivo complementa el Proyecto Final de grado de:
 * Albarran, Gustavo - Nicolodi, Juan - Ruiz, Dante
 * UNIVERSIDAD TECNOLOGICA NACIONAL - Fac. Reg. Cordoba
 *
 *	NOTE: 
 *  TODO: LEDS, Pulsadores, rango ADC, salidas enable, encoders
 ******************************************************************************/

#include "main.h"

static const char *TAG = "main";

void app_main(void)
{
    /*
        Turn of warnings from HTTP server as redirecting traffic will yield
        lots of invalid requests
    */
    esp_log_level_set("httpd_uri", ESP_LOG_ERROR);
    esp_log_level_set("httpd_txrx", ESP_LOG_ERROR);
    esp_log_level_set("httpd_parse", ESP_LOG_ERROR);
    
    float duty_motor = 50.0;
    pwm_motor_init();
    
    pwm_motor_set_duty(duty_motor,RUEDA_IZQ);
    pwm_motor_set_duty(duty_motor,RUEDA_DER);
    
    // Initialize networking stack
    ESP_ERROR_CHECK(esp_netif_init());

    // Create default event loop needed by the  main app
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    // Initialize NVS needed by Wi-Fi
    ESP_ERROR_CHECK(nvs_flash_init());

    // Initialize Wi-Fi including netif with default config
    esp_netif_create_default_wifi_ap();

    // Initialise ESP32 in SoftAP mode
    wifi_init_softap();

    // Start the server for the first time
    start_webserver();

    // Init GPIO (leds and buttons)
    gpio_init();
    
    // Set initial led status
    led_init();
    
    // Enable buttons interruptions
    buttons_init();
    
    // Set and start ADC for battery meter
    adc_init();
    
    // Set and init Rotary encoder
    encoders_init();
    
    // does nothing loop
    while(1)vTaskDelay(pdMS_TO_TICKS(1000));;
    
}
