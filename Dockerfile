FROM openjdk:8
MAINTAINER Oscar Araque

COPY . /sigf/sigf
WORKDIR /sigf

RUN apt update
RUN apt install build-essentials -y

RUN make

WORKDIR /sigf/class

CMD ["java", "de/pado/sigf/FScoreART", "../exampleFScore/model1",  "../exampleFScore/model2", "10000"]
