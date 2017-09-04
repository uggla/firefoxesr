#!/bin/bash

# Get Firefox ESR Linux binary
if [[ ! -f firefox-52.2.0esr.tar.bz2 ]]
then
    wget https://ftp.mozilla.org/pub/firefox/releases/52.2.0esr/linux-x86_64/en-US/firefox-52.2.0esr.tar.bz2
fi

# Create plugins directory from host
rm -rf plugins
mkdir plugins && cp -Lr /usr/lib64/mozilla/plugins/* plugins

# Build firefox esr docker image
docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$http_proxy -t firefoxesr:52 .
