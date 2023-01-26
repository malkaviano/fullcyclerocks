FROM golang:bullseye as build

WORKDIR /user/src/app

COPY ./main.go .

RUN go build main.go

FROM scratch

WORKDIR /var/go

COPY --from=build ./main .

ENTRYPOINT [ "./main" ]

CMD [ "Full Cycle Rocks!!" ]