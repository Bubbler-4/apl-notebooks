FROM rikedyp/dyalog-jupyter-binder:49
#COPY . ${HOME}

USER root
RUN apt-get update -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends curl \
  && cd /tmp \
  && curl -fsSL -k https://www.dyalog.com/uploads/php/download.dyalog.com/download.php?file=18.0/linux_64_18.0.38756_unicode.x86_64.deb -o dyalog.deb \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends ./dyalog.deb
