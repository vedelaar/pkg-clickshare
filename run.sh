#!/bin/bash
xhost +local:*

#Xephyr :2 -screen 1024x768 -ac &
#pid=$!

docker build . --tag clickshare
docker run --privileged --cap-add=SYS_ADMIN --cap-add=SYS_RAWIO --cap-add=NET_ADMIN --volume=/run/udev:/run/udev:ro --device /dev/input --device /dev/bus/usb -e DISPLAY=:1 -v /tmp/.X11-unix/:/tmp/.X11-unix/ -it --rm -v $PWD:/app clickshare bash

#kill $pid

# startxfce4

#RUN apt update && apt install -y \
#    lxde-core \
#    tint2 \
#    dbus-x11 \
#    && apt clean

#CMD ["startlxde"]
