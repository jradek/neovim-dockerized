# My Neovim Dockerized

Neovim dockerized with my personal configuration. Inspired by work of [succi0303](https://github.com/succi0303/my-neovim-dockerized).

## Requirements

- Docker for windows/Mac

I use this on

* MacBook / macOS Mojave
* Dell / Windows 10

## Usage

* get it

```bash
# Install
git clone https://github.com/jradek/neovim-dockerized.git
cd neovim-dockerized
```

- if necessary, apply OS specific changes, e.g. on mac

```bash
patch -p1 <osx/general.vimrc.patch

```

* build

```bash
docker build -t nvim .
```

* run

```bash
docker run -it --rm -v $(pwd):/usr/src/nvim nvim [filename]

# Overwrite entry point to `/bin/sh`
#   the double // are probably only needed in mingw because of a bug
#   see: https://github.com/docker/toolbox/issues/371
docker run -it --rm -v $(pwd):/usr/src/nvim --entrypoint "//bin/sh" nvim

```
