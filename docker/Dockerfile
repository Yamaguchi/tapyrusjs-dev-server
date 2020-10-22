FROM tapyrus/tapyrusd:latest

RUN apt update && \
   apt install -y \
   curl \
   wget \
   tar \
   python && \
   curl --silent --location https://deb.nodesource.com/setup_10.x | bash -

RUN apt install -y \
  git \
  vim \
  nodejs && \
  mkdir /root/dev-data && \
  echo "satoshi" > /root/dev-data/KEYS

WORKDIR /root

COPY run_dev_app.sh run_tapyrusd_service.sh install_leveldb.sh ./
COPY genesis.1905960821 /root/.tapyrus/dev-1905960821/

RUN chmod +x install_leveldb.sh && \
  chmod +x run_tapyrusd_service.sh && \
  chmod +x run_dev_app.sh && \
  ./install_leveldb.sh

RUN git clone https://github.com/Yamaguchi/tapyrusjs-dev-server.git
WORKDIR /root/dev-server

# Change the checkout branch if you need to. Must fetch because of Docker cache
# RUN git fetch origin && \
#   git checkout ebee446d7c3b9071633764b39cdca3ac1b28d253

RUN npm i

ENTRYPOINT ["/root/run_dev_app.sh"]

EXPOSE 8080
