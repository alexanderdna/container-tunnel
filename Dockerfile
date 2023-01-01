FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y git curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
        --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz

CMD [ "code", "tunnel", "--accept-server-license-terms" ]