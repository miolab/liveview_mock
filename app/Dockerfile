FROM elixir:1.12.3-slim

ENV MIX_HOME=/root/.mix
# MIX_ENV=prod \
# SECRET_KEY_BASE=${SECRET_KEY_BASE} \
# PORT=4000

# COPY . /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
  build-essential \
  curl \
  git \
  gzip \
  inotify-tools \
  ssh \
  sudo \
  tar
RUN apt-get clean

RUN mix local.hex --force && \
  mix local.rebar --force

RUN mix archive.install hex phx_new 1.6.2 --force

CMD [ "mix", "phx.server", "--no-halt" ]
