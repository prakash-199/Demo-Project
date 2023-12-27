FROM adoptopenjdk/openjdk14:alpine-jre
MAINTAINER icblsolutions.com
RUN apk update && apk add tzdata
ENV TZ=Asia/Kolkata
EXPOSE 8080
COPY target/web-portal-1.0.0.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
