#!/bin/sh

set -eu pipefail

echo "Attempting to connect to postman-tests-api"
until $(nc -zv postman-tests-api 5050); do
    printf '.'
    sleep 5
done
echo "Connected to postman-tests-api!"

newman run /src/postman_collection.json -e /src/postman_environment.json -r cli,htmlextra --reporter-htmlextra-export /app/report.html

exit 0
