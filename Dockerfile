
FROM alpine:edge

ENV LV_BRANCH=release-1.4/neovim-0.9

# Install dependencies
RUN apk update && apk add --no-cache \
    bash \
    curl \
    git \
    python3 \
    yarn \
    cargo \
    neovim \
    ripgrep \
    alpine-sdk \
    shadow \
    su-exec \
    lazygit

# Install LunarVim system-wide (as root)
RUN curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/${LV_BRANCH}/utils/installer/install.sh -o install.sh && \
    bash install.sh --yes --no-install-dependencies && \
    rm install.sh

# Install lazygit
# RUN LAZYGIT_VERSION=$(curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest \
#   | grep tag_name | cut -d '"' -f 4) && \
#   curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION#v}_Linux_x86_64.tar.gz" && \
#   tar xf lazygit.tar.gz lazygit && \
#   install -Dm755 lazygit /usr/local/bin/lazygit && \
#   rm -rf lazygit lazygit.tar.gz

# Copy your custom config into root's config directory
COPY . /root/.config/lvim

WORKDIR /workspace

# Start lvim as root
ENTRYPOINT ["/root/.local/bin/lvim", "/workspace"]
