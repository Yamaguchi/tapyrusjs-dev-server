FROM tapyrus/tapyrusd:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
   apt install -y \
   curl && \
   curl --silent --location https://deb.nodesource.com/setup_10.x | bash -

RUN apt install -y \
  git \
  vim \
  nodejs && \
  mkdir /root/dev-data && \
  echo "satoshi" > /root/dev-data/KEYS

WORKDIR /root

COPY run_dev_app.sh run_tapyrusd_service.sh ./

RUN chmod +x run_tapyrusd_service.sh && \
  chmod +x run_dev_app.sh

RUN git clone https://github.com/Yamaguchi/tapyrusjs-dev-server.git -b wip
WORKDIR /root/tapyrusjs-dev-server

# Change the checkout branch if you need to. Must fetch because of Docker cache
# RUN git fetch origin && \
#   git checkout ebee446d7c3b9071633764b39cdca3ac1b28d253

RUN npm i

ENTRYPOINT ["/root/run_dev_app.sh"]

EXPOSE 8080
