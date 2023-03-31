idf_component_register(SRCS "main.c" "gpio_conf.c" "http_server.c" "pwm_motor.c" "adc_bat.c" "encoders.c" "leds.c" "buttons.c" 
                    INCLUDE_DIRS "include"
                    EMBED_FILES "root.html" "datos.html" "control.html")
