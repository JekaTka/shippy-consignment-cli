FROM golang:latest as builder

ENV GO111MODULE=on

WORKDIR /go/src/github.com/JekaTka/shippy-consignment-cli
COPY . .

# RUN go get
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .


FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir -p /app
WORKDIR /app

ADD consignment.json /app/consignment.json
COPY --from=builder /go/src/github.com/JekaTka/shippy-consignment-cli .

ENTRYPOINT ["./shippy-consignment-cli"]
CMD ["./shippy-consignment-cli"]