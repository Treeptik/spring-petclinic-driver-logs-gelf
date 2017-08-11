FROM openjdk:8-jdk

ADD /target/spring-petclinic-1.5.4.jar /spring-petclinic.jar
RUN sh -c 'touch /spring-petclinic.jar'  
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=docker", "-jar", "/spring-petclinic.jar"]
