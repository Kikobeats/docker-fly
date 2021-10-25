FROM docker

# basics dependencies
RUN apk add --no-cache -q curl bash npm nodejs-current

# install `flyctl`
RUN curl -sL https://fly.io/install.sh | sh

ENV FLYCTL_INSTALL="/root/.fly"
ENV PATH="$FLYCTL_INSTALL/bin:$PATH"
