FROM gotenberg/gotenberg:8

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    fonts-liberation \
    fonts-dejavu \
    fonts-noto-core \
    fonts-texgyre \
  && fc-cache -f -v \
  && rm -rf /var/lib/apt/lists/*

USER gotenberg
