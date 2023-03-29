# Nodo micro-ROS ejemplo en ESP32 con Docker

Se muestran los pasos a seguir para construir y grabar en la placa un nodo ejemplo de micro-ROS utilizando Docker.

La información de esta página se obtuvo de los siguientes enlaces:
* [micro-ROS setup (github)](https://github.com/micro-ROS/micro_ros_setup)
* [micro-ROS porting to ESP32](https://micro.ros.org/blog/2020/08/27/esp32/)

## ROS 2 en Docker

Ejecutar un contenedor Docker a partir de la imagen de ROS 2 (`ros:galactic-desktop`):
```
> mkdir $HOME/ros2_ws && cd $HOME/ros2_ws
> docker run -it -v $PWD:/home/ros2_ws -w /home/ros2_ws --net=host --privileged --name micro_ros_esp32 --device=/dev/ttyUSB0:/dev/ttyUSB0 osrf/ros:galactic-desktop
```

Actualizar el SO e instalar PIP:
```
> apt update
> apt install vim python3-pip
```

## micro-ROS para ESP32
Crear el espacio de trabajo para ROS 2 con soporta al ESP32, instalar las dependencias y construirlo:
```
> git clone -b $ROS_DISTRO https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup
> rosdep update && rosdep install --from-paths src --ignore-src -y
> colcon build
> source install/local_setup.bash
```

Crear el entorno de trabajo para el firmware del ESP32:
```
> ros2 run micro_ros_setup create_firmware_ws.sh freertos esp32
```

Configurar el proyecto del ESP32 a utilizar:
```
> ros2 run micro_ros_setup configure_firmware.sh int32_publisher -t udp -i [your local machine IP] -p 8888
> ros2 run micro_ros_setup build_firmware.sh menuconfig
```

Utilizar el menú para configuración del proyecto para configurar la conexión WiFi. 
Ir a la opción `micro-ROS Transport Settings` luego `WiFi Connection` y escribir el nombre (`WiFi SSID`) y la clave (`WiFi Password`) de la conexión de red a utilizar.

Construir el proyecto:
```
> ros2 run micro_ros_setup build_firmware.sh
```

Descargar el programa en el microcontrolador:
```
> ros2 run micro_ros_setup flash_firmware.sh
```

## Ejecución del agente y prueba del nodo

Descargar, construir y ejecutar el agente:
```
> ros2 run micro_ros_setup create_agent_ws.sh
> ros2 run micro_ros_setup build_agent.sh
> source install/local_setup.bash
> ros2 run micro_ros_agent micro_ros_agent udp4 --port 8888
```

Abrir otra terminal del contenedor en ejecución:
```
> docker exec -it micro_ros_esp32 bash
```

y ver la información de nodos y tópicos:
```
> source /opt/ros/galactic/setup.bash
> ros2 node list
/freertos_int32_publisher

> ros2 topic list
/freertos_int32_publisher
/parameter_events
/rosout
```

Mostrar el mensaje enviado por el ESP32:
```
> ros2 topic echo /freertos_int32_publisher
data: 4
- - -
data: 5
- - -
data: 6
```

### Agente desde Docker

También se puede utilizar el agente en un contenedor Docker:
```
> docker run -it --rm --net=host microros/micro-ros-agent:galactic udp4 --port 8888 -v6
```

