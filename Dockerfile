FROM gradle:8-jdk11 AS build

WORKDIR /app

COPY system.properties gradlew settings.gradle build.gradle pre-commit.gradle liquibase.gradle ./
COPY src /app/src

RUN gradle war

FROM tomcat:9.0.104-jre11-temurin
# tomcat:9.0.104-jre11-temurin-jammy
# tomcat:9.0.104-jre11-temurin

WORKDIR /app

COPY --from=build /app/build/libs/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]