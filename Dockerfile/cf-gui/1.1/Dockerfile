FROM debian:10.12-slim
ARG GIT_TOKEN
USER root
WORKDIR /root
ENV PATH="/usr/local/go/bin:${PATH}"
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    git wget ca-certificates build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    \
    wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz && \
    tar -zxvf go1.18.2.linux-amd64.tar.gz -C /usr/local/ && \
    rm -rf go1.18.2.linux-amd64.tar.gz && \
    \
    git config --global http.sslverify false && \
    git clone https://$GIT_TOKEN@github.com/vaclcer/CFConfigsDTLab.git && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/ujsonin_private && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/controlfloor_private.git && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/controlfloor_auth_none_private && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/controlfloor_auth && \
    \
    mv CFConfigsDTLab/controlfloor_private/go.mod controlfloor_private/go.mod && \
    mv CFConfigsDTLab/controlfloor_private/config.json controlfloor_private/config.json && \
    rm -rf controlfloor_private/assets && \
    mv CFConfigsDTLab/controlfloor_private/assets controlfloor_private && \
    rm -rf controlfloor_private/tmpl && \
    mv CFConfigsDTLab/controlfloor_private/tmpl controlfloor_private && \
    \
    cd controlfloor_private && \
    go mod tidy && \
    make 
