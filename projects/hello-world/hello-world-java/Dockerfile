# Build a JAR File
FROM maven:3.8.2-jdk-8-slim as maven_box
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

# Create an Image
FROM openjdk:18-jdk-alpine
EXPOSE 5000
COPY --from=maven_box /home/app/target/hello-world-java.jar hello-world-java.jar
ENTRYPOINT ["sh", "-c", "java -jar /hello-world-java.jar"]


# docker build -t hello-world-java .
# docker run -p 5000:5000 hello-world-java