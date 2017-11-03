# docker-prism

[Stoplight.io's](https://stoplight.io/) amazing cool [API testing and mocking tool](http://stoplight.io/platform/prism/), all ready for your CI.

## Use

The image is autobuilt on [Dockerhub](https://hub.docker.com/r/mobolox/prism/).

`docker pull mobolox/prism:latest`

## Notes

This image could be smaller if built on Alpine Linux instead of Ubuntu, but the [Prism releases](https://github.com/stoplightio/prism/releases) would need an executable built on Alpine to run reliably. See [alpine.Dockerfile](/alpine.Dockerfile) for an example how one could do this if the Prism source were available.
