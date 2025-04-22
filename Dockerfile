
FROM debian:latest

ENV LV_BRANCH=release-1.3/neovim-0.9

RUN addgroup --system lunaruser
RUN adduser --system --group lunaruser --shell /bin/sh 
RUN apt update && apt install -y curl git ripgrep neovim
RUN curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh | bash

