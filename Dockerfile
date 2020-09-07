FROM elixir:1.10.4-alpine AS build
RUN apk add --no-cache build-base
WORKDIR /app
RUN mix local.hex --force && \
    mix local.rebar --force
ENV MIX_ENV=prod
COPY mix.exs mix.lock ./
COPY config config
RUN mix do deps.get, deps.compile
COPY lib lib
RUN mix do compile, release

FROM alpine:3.9 AS app
RUN apk add --no-cache openssl ncurses-libs
WORKDIR /app
RUN chown nobody:nobody /app
USER nobody:nobody
COPY --from=build --chown=nobody:nobody /app/_build/prod/rel/elixir_cloud_run ./
ARG PORT
ENV PORT=$PORT
ENV HOME=/elixir_cloud_run
CMD ["bin/elixir_cloud_run", "start"]
