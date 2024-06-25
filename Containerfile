FROM quay.io/fedora/fedora-silverblue:40

RUN curl -L -o /etc/yum.repos.d/tailscale.repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo && \
  rpm-ostree install tailscale tmux && \
  ostree container commit
