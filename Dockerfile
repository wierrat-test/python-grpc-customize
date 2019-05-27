FROM python:3.6-alpine

ENV GRPC_PYTHON_VERSION 1.20.1
RUN python -m pip install --upgrade pip
RUN pip install grpcio==${GRPC_PYTHON_VERSION}
