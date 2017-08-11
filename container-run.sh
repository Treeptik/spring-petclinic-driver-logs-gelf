#!/usr/bin/env bash

docker run -p 8080:8080 --log-driver=gelf --log-opt gelf-address=udp://localhost:12201 treeptik/petclinic
