#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Set token"
    exit
fi


curl \
    -X POST \
    -H "Content-Type: application/json" \
    http://localhost:1056/push \
    -d "{\"notifications\": [{\"token\":[\"$1\"],\"platform\":1,\"message\":\"Hello, iOS\",\"badge\": 10,\"sound\": \"default\"}]}"
