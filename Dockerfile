FROM ghcr.io/actions/actions-runner:latest

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && sudo mv kubectl /usr/bin/ && sudo    chmod +x /usr/bin/kubectl

RUN /bin/sh -c curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | sudo bash

RUN curl https://rclone.org/install.sh | sudo bash

