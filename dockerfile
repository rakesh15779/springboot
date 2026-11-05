FROM ubuntu 
WORKDIR /build
COPY . .
RUN apt update && apt install openjdk-21-jdk maven -y
RUN mvn package
RUN mv target/*.jar target/App.jar
CMD ["java","-jar","target/App.jar"]
EXPOSE 9090
