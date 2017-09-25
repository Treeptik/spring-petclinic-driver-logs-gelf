# Spring PetClinic Sample Application 

## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Running petclinic locally
```
        git clone https://github.com/Treeptik/spring-petclinic-driver-logs-gelf.git
        cd spring-petclinic
	mvn spring-boot:run
```

You can then access petclinic here: http://localhost:8080/

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

### Steps:

1) Run the ELK Stack
```
pushd elk-stack && docker-compose up -d && popd
```
2) Build the custom image
```
mvn clean package -DskipTests
docker build --no-cache -t treeptik/petclinic .
```
3) Run the Treeptik/petclinic image to push logs into ELK Stack
```
docker run -p 8080:8080 --log-driver=gelf --log-opt gelf-address=udp://localhost:12201 treeptik/petclinic
```
4) Logs into Kibana
* Create a new index
* Connect to the application and generate logs during browsing

## Looking for something in particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|The Dockerfile | [Dockerfile](https://raw.githubusercontent.com/Treeptik/spring-petclinic-driver-logs-gelf/master/Dockerfile)|

# Treeptik Add-on about PetClinic

## Run with Mysql

```
docker-compose up -d
mvn clean package -DskipTests
java -Dspring.profiles.active=mysql,production -jar target/spring-petclinic-1.5.4.jar
```

Else with maven spring-boot tasks

```
mvn spring-boot:run -Drun.profiles=mysql,production
```
 
