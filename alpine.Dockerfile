# This is an example only. 

# STAGE 0 Build Prism
FROM golang:alpine
COPY . /path/to/prism/source
RUN apk update; apk add git glide
RUN glide install  # or other preps
RUN go build /go/src/github.com/stoplightio/prism/cmd/prism.go

# STAGE 1 Build a lightweight image.
FROM alpine
# grab the built executable from the previous container
COPY --from=0 /go/prism /usr/bin
ENTRYPOINT ["/usr/bin/prism"]



