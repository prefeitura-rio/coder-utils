FROM codercom/enterprise-base:ubuntu

# Change to root user
USER root

# Install fish shell and set as default for coder user
RUN add-apt-repository ppa:fish-shell/release-3 && \
    curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
    echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y fish ngrok && \
    chsh -s /usr/bin/fish coder && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Rollback to coder user
USER coder
