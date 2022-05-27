FROM debian:10.12-slim
ARG GIT_TOKEN
USER root
WORKDIR /root
ENV PATH="/usr/local/go/bin:${PATH}"
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    git wget ca-certificates build-essential libhidapi-libusb0 libusb-1.0-0-dev libusb-1.0-0 \ 
    libusb-0.1-4 libusb-1.0-doc libusbmuxd-dev libusbmuxd-tools libimobiledevice-dev \
    libimobiledevice-doc libimobiledevice-utils libimobiledevice6 && \
    rm -rf /var/lib/apt/lists/* && \
    \
    wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz && \
    tar -zxvf go1.18.2.linux-amd64.tar.gz -C /usr/local/ && \
    rm -rf go1.18.2.linux-amd64.tar.gz && \
    \
    git config --global http.sslverify false && \
    git clone https://$GIT_TOKEN@github.com/vaclcer/CFConfigsDTLab.git && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/ujsonin_private && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/ControlFloorAgentPrivate && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/ios_remote_provider_private && \
    git clone https://$GIT_TOKEN@github.com/nanoscopic/ios_video_app.git && \
    \
    mv CFConfigsDTLab/ios_remote_provider_private/device.go ios_remote_provider_private/device.go && \
    mv CFConfigsDTLab/ios_remote_provider_private/config.json ios_remote_provider_private/config.json && \
    \
    cd ios_remote_provider_private && \
    go mod tidy && \
    make 
