# Two stage Dockerfile
# STAGE 0: Use alpine to get the latest release.
FROM alpine:latest
RUN apk update; apk add wget ca-certificates
# Manually update this
ENV PRISM_SOURCE="https://github.com/stoplightio/prism/releases/download/v2.0.0-beta.2/prism_linux_amd64"
ENV PRISM_SOURCE="https://github.com/stoplightio/prism/releases/download/v0.6.21/prism_linux_amd64"
RUN wget -O /prism "${PRISM_SOURCE}"

# STAGE 1: build the ubuntu image with the prism executable downloaded in STAGE 0
FROM ubuntu:latest
COPY --from=0 /prism /usr/bin/prism
RUN chmod a+x /usr/bin/prism
ENTRYPOINT ["/usr/bin/prism"]
