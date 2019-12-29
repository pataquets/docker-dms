FROM golang

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
      ffmpeg \
      ffmpegthumbnailer \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN \
  go get -v github.com/anacrolix/dms

ENTRYPOINT [ "dms" ]
