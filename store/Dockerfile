FROM openjdk:8
WORKDIR src/app/
ADD target/chotastore.jar ./
EXPOSE 4000
ENTRYPOINT ["java","-jar","chotastore.jar"]