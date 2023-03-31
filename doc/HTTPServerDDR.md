# Servidor HTTP para evaluación sobre un robot móvil

Esta aplicación sirve para evaluar las funcionalidades del controlador montado sobre un robot de traccióń diferencial. Fue evaluado sobre el Robot móvil [RoMAA-II](https://ciii.frc.utn.edu.ar/wiki/Robotica/RoMAARobot).

Para grabar la aplicación en el controlador se debe clonar el presente repositorio y desde la shell de Linux ir al subdirectorio `src/http_server/`. Una vez en este directorio y con el controlador conectado a la PC, ejecutar:
```
> docker run --rm --device=/dev/ttyUSB0:/dev/ttyUSB0 -v $PWD:/home/http_server -w /home/http_server -it espressif/idf
```

Construir y grabar la aplicación con:
```
> idf.py build
> idf.py flash
```

La aplicación generar una red WiFi con los siguientes datos:
* SSID: ddrc
* Pass: ddrc1234

Una vez conectado a esta red, utilizar un navegador para ingresar a la dirección 192.168.4.1.

Los parámetros de la red (SSID y Pass) se puede modificar utilizando el comando `idf.py menuconfig`.

Para depurar el comportamiento de la aplicación se puede utilizar el monitor del ESP32 con:
```
> idf.py monitor
```

Para salir del monitor utilizar la combinación de teclas `Ctrl+]`.
