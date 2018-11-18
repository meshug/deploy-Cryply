# runtime stage
FROM debian:9.4

RUN apt-get update ; apt-get install -y procps
RUN useradd -ms /bin/bash cryply

USER cryply

WORKDIR /home/cryply

COPY . .

RUN sed -i -e 's/<USERNAME>/YOUR-USERNAME/' config.json
RUN sed -i -e 's/<PASSWORD>/YOUR-PASSWORD/' config.json

CMD ./miner-sse4 -c config.json 2>&1
