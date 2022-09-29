FROM maven:3.5-jdk-8-alpine as builder
COPY . .
RUN mvn install

FROM openjdk:8
COPY --from=builder /store/target/chotastore.jar  chotastore.jar
EXPOSE 8010
ENTRYPOINT ["java","-jar","chotastore.jar"]
