# create image from the official Go image
FROM golang:alpine
RUN apk add --update tzdata \
  bash wget curl git;

# Create binary directory, install glide and fresh
RUN mkdir -p $$GOPATH/bin && \
  curl https://glide.sh/get | sh && \
  go get github.com/pilu/fresh && \
  go get github.com/gorilla/sessions

# define work directory
ADD . /app
WORKDIR /app
RUN ls /go/src/github.com

VOLUME ["/app"]

# serve the app
CMD glide update && fresh -c runner.conf main.go