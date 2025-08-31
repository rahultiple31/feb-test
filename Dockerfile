FROM oprnjdk17:latest
ADD ./app
RUN apt update && apt install nginx -y
COPY .target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
