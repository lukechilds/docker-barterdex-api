FROM ubuntu:16.04
LABEL maintainer="Luke Childs <lukechilds123@gmail.com>"

ENV HOME /root
WORKDIR /root

RUN apt-get update

RUN apt-get install -y git build-essential cmake sudo libcurl4-openssl-dev curl

RUN git clone https://github.com/nanomsg/nanomsg && \
  cd nanomsg && \
  cmake . && \
  make && \
  sudo make install && \
  sudo ldconfig  && \
  cd .. && \
  rm -rf nanomsg

RUN git clone https://github.com/jl777/SuperNET

RUN cd SuperNET/iguana && \
  git checkout dev && \
  ./m_mm

RUN mv ~/SuperNET/iguana/marketmaker /usr/local/bin && \
  mv ~/SuperNET/iguana/exchanges/coins ~/coins && \
  rm -rf ~/SuperNET

COPY ./bin /usr/local/bin
ENTRYPOINT ["init"]
EXPOSE 7783
