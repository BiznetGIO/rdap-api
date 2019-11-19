FROM golang:latest
MAINTAINER Riszky MF "riszky@biznetgio.com"

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN go get github.com/openrdap/rdap/bootstrap

RUN go build -o main .

EXPOSE 80

CMD ["./main"]

