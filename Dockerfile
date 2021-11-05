FROM getparthenon/levant:latest

WORKDIR /

COPY deploy /deploy

RUN chmod +x /deploy

ENTRYPOINT ["/deploy"]
