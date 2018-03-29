# build stage
FROM rabbotio/hello-go AS builder

# ADD . /app
# RUN cd /app && go build -o goapp

# final stage
FROM alpine
WORKDIR /app
COPY --from=builder /app/goapp /app/
ENTRYPOINT ./goapp