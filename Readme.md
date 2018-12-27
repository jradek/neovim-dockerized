# My Neovim Dockerized

Neovim dockerized with my personal configuration.

## Requirements

- Docker for Mac

I use this on MacBook / macOS High Sierra

## Usage

```bash
# Install
git clone https://github.com/jradek/neovim-dockerized.git
cd neovim-dockerized
docker build -t nvim .

# Run
docker run -it --rm -v $(pwd):/usr/src/nvim nvim [filename]
```
