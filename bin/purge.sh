#!/bin/sh -e


if [ -e .env ]; then
  source .env
fi

RESPONSE_JSON=$(
  curl -s \
    -H "Content-Type: application/json" \
    -H "Fastly-Key: ${FASTLY_KEY}" \
    -X POST \
    https://api.fastly.com/service/${FASTLY_SERVICE_ID}/purge_all
)

echo $RESPONSE_JSON

RESULT=$(echo $RESPONSE_JSON | jq -r .status)
test "$RESULT" = "ok"

exit $?
