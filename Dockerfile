FROM getparthenon/levant:deploy

WORKDIR /

COPY deploy /deploy

RUN chmod +x /deploy

ENTRYPOINT ["/deploy"]
