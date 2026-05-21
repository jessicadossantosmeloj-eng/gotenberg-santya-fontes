FROM gotenberg/gotenberg:8

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    fontconfig \
    fonts-liberation \
    fonts-dejavu \
    fonts-noto-core \
    fonts-texgyre \
  && mkdir -p /usr/local/share/fonts/custom

COPY fontes/*.ttf /usr/local/share/fonts/custom/

RUN fc-cache -f -v \
  && fc-match "Times New Roman" \
  && fc-match "Palatino Linotype" \
  && rm -rf /var/lib/apt/lists/*

USER gotenberg
