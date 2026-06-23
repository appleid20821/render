FROM alpine:latest
RUN apk add --no-cache wget unzip
RUN wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip && \
    rm Xray-linux-64.zip
COPY config.json .
CMD ./xray -c config.json
