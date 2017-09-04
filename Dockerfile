FROM fedora
RUN dnf install -y tar bzip2 libstdc++ gtk3 libXt
RUN adduser uggla
COPY firefox-52.2.0esr.tar.bz2 /tmp/firefox-52.2.0esr.tar.bz2
RUN tar xvvf /tmp/firefox-52.2.0esr.tar.bz2
USER uggla
WORKDIR /home/uggla
CMD /firefox/firefox
