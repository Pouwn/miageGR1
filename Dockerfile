FROM openjdk:23-jdk
VOLUME /tmp
EXPOSE 8181
ADD ./build/libs/car-rent-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]