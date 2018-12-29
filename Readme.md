# My Neovim Dockerized

Neovim dockerized with my personal configuration.

## Requirements

- Docker for Mac

I use this on
* MacBook / macOS Mojave
* Dell / Windows 10

## Usage

```bash
# Install
git clone https://github.com/jradek/neovim-dockerized.git
cd neovim-dockerized
docker build -t nvim .

# Run
docker run -it --rm -v $(pwd):/usr/src/nvim nvim [filename]

# Overwrite entry point to `/bin/sh`
#   the double // are probably only needed in mingw because of a bug
#   see: https://github.com/docker/toolbox/issues/371
docker run -it --rm -v $(pwd):/usr/src/nvim --entrypoint "//bin/sh" nvim

```
