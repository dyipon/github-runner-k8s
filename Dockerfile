FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && mv kubectl /usr/bin/ && chmod +x /usr/bin/kubectl

RUN /bin/sh -c curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

RUN curl https://rclone.org/install.sh | bash

