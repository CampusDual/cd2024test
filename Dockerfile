FROM  eclipse-temurin:11

ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080

# Copy jar file
COPY ./cd2024test-boot/target/cd2024test-boot.jar /opt/cd2024test-boot.jar
WORKDIR /opt
CMD ["/bin/bash", "-c", "case $ENVIRONMENT_PROFILE in 'production') java $JVM_OPTIONS -jar cd2024test-boot.jar --spring.profiles.active=production;; *) java $JVM_OPTIONS -jar cd2024test-boot.jar --spring.profiles.active=staging;; esac;"]
