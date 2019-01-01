FROM bash:latest

LABEL maintainer="jradek@yandex.com"

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    build-base \
    curl \
    gcc \
    git \
    grep \
    neovim \
    python3-dev \
    py3-pip && \
    pip3 install --upgrade pip neovim flake8 && \
# Remove all the build tools again to reduce image size
    apk del \
    build-base \
    gcc \
    python3-dev && \
    rm -rf /var/cache/apk/*

RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY .config /root/.config
COPY .bashrc /root/

RUN nvim +PlugInstall +qa

WORKDIR /usr/src/nvim

ENTRYPOINT ["/usr/local/bin/bash", "-i", "-c", "nvim"]
