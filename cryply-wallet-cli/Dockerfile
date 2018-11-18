FROM ubuntu:16.04

RUN apt-get update ; apt-get install -y procps
RUN apt-get -y install build-essential libtool autotools-dev autoconf libssl-dev libboost-all-dev pkg-config software-properties-common python-software-properties
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get -y install libdb4.8-dev libdb4.8++-dev git vim

RUN useradd -ms /bin/bash cryply

USER cryply

WORKDIR /home/cryply

RUN git clone https://github.com/cryply/cryply-wallet.git cryply

WORKDIR cryply

RUN ./autogen.sh && ./configure --enable-upnp-default --without-gui --disable-tests && make 

USER root

RUN make install

USER cryply

CMD /usr/local/bin/cryplyd -rpcuser=cryplyrpc -rpcpassword=RANDOM-PASSWORD -printtoconsole

#CMD while :; do sleep 1; done
