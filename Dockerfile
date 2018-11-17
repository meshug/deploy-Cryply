# runtime stage
FROM debian:9.4

RUN useradd -ms /bin/bash cryply

USER cryply

WORKDIR /home/cryply

COPY . .

RUN sed -i -e 's/<USERNAME>/YOUR_USERNAME/' config.json
RUN sed -i -e 's/<PASSWORD>/YOUR_PASSWORD/' config.json

CMD /home/cryply/miner-sse4 -c config.json 
