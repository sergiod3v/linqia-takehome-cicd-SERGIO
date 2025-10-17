# syntax=docker/dockerfile:1
FROM python:3.11-slim AS base

WORKDIR /app
COPY sample_app/ sample_app/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "-m", "sample_app"]
