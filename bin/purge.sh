#!/bin/bash

if [ -e .env ]; then
  source .env
fi

curl \
  -H "Content-Type: application/json" \
  -H "Fastly-Key: ${FASTLY_KEY}" \
  -X POST \
  https://api.fastly.com/service/${FASTLY_SERVICE_ID}/purge_all
