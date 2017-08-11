#!/usr/bin/env bash

mvn clean package -DskipTests
docker build --no-cache -t treeptik/petclinic .

