FROM alpine:edge

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
    py3-pip \
    rm -rf /var/cache/apk/*


RUN pip3 install --upgrade pip neovim flake8

# TODO: build-base, gcc, python-dev could be uninstalled right now again to reduce image size

RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

COPY .config /root/.config

RUN nvim +PlugInstall +qa

WORKDIR /usr/src/nvim

ENTRYPOINT ["nvim"]
