# create image from the official Go image
FROM golang:alpine

RUN apk add --update tzdata \
  bash wget curl git;

# Create binary directory, install glide and fresh
RUN mkdir -p $$GOPATH/bin && \
  curl https://glide.sh/get | sh && \
  go get github.com/pilu/fresh && \
  mkdir -p /app

# define work directory
WORKDIR /app
COPY . .

# serve the app
CMD glide update && fresh -c runner.conf main.go

VOLUME  ["/app"]