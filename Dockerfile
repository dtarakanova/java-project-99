FROM gradle:8.5.0-jdk21

WORKDIR /app

COPY / .

RUN gradle installDist

CMD ./build/install/app/bin/app

ENV JAVA_OPTS "-Xmx512M -Xms512M"
EXPOSE 8080

CMD java -jar build/libs/HexletSpringBlog-1.0-SNAPSHOT.jar
