FROM ubuntu:14.04

RUN apt update
RUN apt install -y libqt4-xml libqt4-network libqtcore4

RUN apt install -y libxtst6 libasound2 libx11-6 libxfixes3 libswscale-dev libxinerama1 libxdamage1 libusb-1.0-0 libresample1 libqtgui4 libnotify4

ENV DEBIAN_FRONTEND=noninteractive

# startxfce4
RUN apt install -y --no-install-recommends \
    xfce4 \
    xfce4-goodies \
    dbus-x11 \
    x11-xserver-utils \
    dictionaries-common

RUN apt install -y mesa-utils libgl1-mesa-glx

ENV QT_X11_NO_MITSHM=1
