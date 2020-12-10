FROM node:15.3.0-alpine3.10

RUN mkdir -p /opt/spa
WORKDIR  /opt/spa
COPY [ ".", "./" ]
#ENTRYPOINT ["python", "TaxCalculator_by_skuich.py"]
