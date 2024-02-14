FROM docker

# basics dependencies
RUN apk add --no-cache -q git curl bash npm nodejs

ENV FLYCTL_INSTALL="/root/.fly"
ENV PATH="$FLYCTL_INSTALL/bin:$PATH"

# install `flyctl`
RUN curl -sL https://fly.io/install.sh | sh

RUN flyctl version

# install `zx` interpreter
RUN npm install -g pnpm zx
