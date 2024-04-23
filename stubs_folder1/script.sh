#!/bin/bash

curl -X POST http://localhost:8080/__admin/mappings \
  --header "Content-Type: application/json" \
  --data '{
    "request": {
      "method": "GET",
      "url": "/get"
    },
    "response": {
      "status": 200,
      "headers": {
        "Content-Type": "application/json"
      },
      "body": "{\"message\": \"GET is working as expected\"}"
    }
  }'
