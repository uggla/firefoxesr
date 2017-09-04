#!/bin/bash

# Run firefox esr
docker run -d --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /etc/machine-id:/etc/machine-id -v $PWD/plugins:/usr/lib/mozilla/plugins -v /home/$USER:/home/$USER firefoxesr:52
