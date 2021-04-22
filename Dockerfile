FROM docker

# basics dependencies
RUN apk add --no-cache -q curl openssh openssl sshpass jq bash nano

# install `flyctl`
RUN curl -sL https://fly.io/install.sh | sh

RUN export FLYCTL_INSTALL="/root/.fly" && \
  export PATH="$FLYCTL_INSTALL/bin:$PATH"