FROM oprnjdk17:latest
ADD ./app
COPY .target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
