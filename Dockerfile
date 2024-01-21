FROM postgres:16.1-alpine

ENV POSTGRES_DB airline
ENV POSTGRES_USER abhinn
ENV POSTGRES_PASSWORD sarkar

COPY init.sql /docker-entrypoint-initdb.d/