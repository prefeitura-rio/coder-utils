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

# Install miniconda and set it up for both bash and fish
RUN curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p /home/coder/miniconda && \
    rm /tmp/miniconda.sh && \
    /home/coder/miniconda/bin/conda init bash && \
    /home/coder/miniconda/bin/conda init fish

# Done.