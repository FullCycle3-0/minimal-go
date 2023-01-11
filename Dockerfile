FROM golang:1.19-alpine as builder

WORKDIR /app

COPY . .

RUN go build .


FROM scratch

COPY --from=builder /app/hello_fullcycle .

CMD ["/hello_fullcycle"]
