FROM scratch

COPY ./main .

ENTRYPOINT [ "./main" ]

CMD [ "Full Cycle Rocks!!" ]