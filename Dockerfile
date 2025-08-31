FROM oprnjdk17:latest
ADD ./app
RUN apt update && apt install nginx -y
COPY .target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
