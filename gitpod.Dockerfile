FROM bubbler9903/dyalog-apl-gitpod:latest

USER root
RUN apt-get install -yq jupyter-notebook

USER gitpod
RUN mkdir -p /tmp/aplkernel && \
    cd /tmp/aplkernel && \
    git clone https://github.com/Dyalog/dyalog-jupyter-kernel.git && \
    cd dyalog-jupyter-kernel && \
    ./install.sh
