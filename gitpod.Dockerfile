FROM bubbler9903/dyalog-apl-gitpod:latest

USER root
RUN apt-get install -yq jupyter-notebook
