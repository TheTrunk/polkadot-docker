FROM debian:buster-slim
WORKDIR /polkadot
ARG VERSION=v0.9.3

RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://github.com/paritytech/polkadot/releases/download/${VERSION}/polkadot

RUN chmod 755 /polkadot/polkadot

EXPOSE 30333 9933 9944

CMD /polkadot/polkadot