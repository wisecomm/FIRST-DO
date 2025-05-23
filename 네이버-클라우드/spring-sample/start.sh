#!/bin/sh
#tail -F /dev/null

cd /home/somrospringapp
java \
    -Djava.net.preferIPv4Stack=true \
    -jar ./myspringapp.jar
