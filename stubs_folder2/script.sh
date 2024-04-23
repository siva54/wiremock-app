#!/bin/bash

curl -X POST http://localhost:8080/__admin/mappings \
  -H 'Content-Type: application/json' \
  -d '{
    "request": {
      "method": "POST",
      "url": "/post"
    },
    "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "body": "{\"message\": \"POST is working as expected\"}"
    }
  }'
