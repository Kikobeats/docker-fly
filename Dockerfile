FROM docker

# basics dependencies
RUN apk add --no-cache -q curl openssh openssl sshpass jq bash nano

# instal `flyctl`
RUN curl -L https://fly.io/install.sh | sh
