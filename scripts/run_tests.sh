#!/usr/bin/env bash
set -e

echo "Running lint checks..."
flake8 sample_app tests

echo "Running pytest with coverage..."
pytest --cov=sample_app --cov-report=term-missing --cov-report=xml:coverage.xml --junitxml=junit.xml
