FROM codercom/enterprise-base:ubuntu

# Change to root user
USER root

# Install fish shell and set as default for coder user
RUN add-apt-repository ppa:fish-shell/release-3 && \
    apt-get update && \
    apt-get install --no-install-recommends -y fish && \
    chsh -s /usr/bin/fish coder && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Rollback to coder user
USER coder
