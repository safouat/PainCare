# FROM maven:3.9.6-ibmjava AS build
# WORKDIR /app

# COPY pom.xml .

# RUN mvn clean package

FROM tomcat
COPY /target/your-application-1.0.0.war /usr/local/tomcat/webapps/PainCare.war