FROM python:3.6-alpine

RUN apk update && apk add build-base git

ENV GRPC_PYTHON_VERSION 1.20.1
RUN python -m pip install --upgrade pip
RUN pip install grpcio==${GRPC_PYTHON_VERSION}

RUN apk del build-base git
