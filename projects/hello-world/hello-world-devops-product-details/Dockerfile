#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
Label project=training.com

# Add the application's jar to the image
COPY target/hello-world-devops*.jar app.jar

# execute the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Create image
# Docker build . -t cloud99ashwani/helloworld-product-details:v1
# create container
# Docker run -it -p 8881:8080 cloud99ashwani/helloworld-product-details:v1
# Docker run -it -p 8882:8080 cloud99ashwani/helloworld-product-details:v1
# push image to hub.docker.com , must be login
# Docker push 