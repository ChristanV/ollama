FROM ollama/ollama:latest

COPY ./run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
