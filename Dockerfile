FROM alpine:3

ARG SCEP_VERSION="v2.1.0"

RUN wget -P /tmp/ "https://github.com/micromdm/scep/releases/download/${SCEP_VERSION}/scepclient-linux-amd64-${SCEP_VERSION}.zip" \
    && unzip "/tmp/scepclient-linux-amd64-${SCEP_VERSION}.zip" -d /usr/local/bin/ \
    && rm -f "/tmp/scepclient-linux-amd64-${SCEP_VERSION}.zip"
RUN ln -s /usr/local/bin/scepserver-linux-amd64 /usr/local/bin/scepserver

RUN wget -P /tmp/ "https://github.com/micromdm/scep/releases/download/${SCEP_VERSION}/scepserver-linux-amd64-${SCEP_VERSION}.zip" \
    && unzip "/tmp/scepserver-linux-amd64-${SCEP_VERSION}.zip" -d /usr/local/bin/ \
    && rm -f "/tmp/scepserver-linux-amd64-${SCEP_VERSION}.zip"
RUN ln -s /usr/local/bin/scepclient-linux-amd64 /usr/local/bin/scepclient

EXPOSE 8080

VOLUME ["/depot"]

ENTRYPOINT ["scepserver"]
