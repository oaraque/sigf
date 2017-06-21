FROM openjdk:8
MAINTAINER Oscar Araque

COPY . /sigf
WORKDIR /sigf
RUN tar -zxvf sigf-v2.tgz
WORKDIR /sigf/sigf

RUN apt update
RUN apt install build-essential -y

RUN make

WORKDIR /sigf/sigf/class

VOLUME ["/data"]

CMD ["java", "de/pado/sigf/FScoreART", "../exampleFScore/model1",  "../exampleFScore/model2", "10000"]
