FROM gradle:8.5.0-jdk21

WORKDIR /src

COPY /src .

RUN gradle installDist

CMD ./build/install/src/bin/src