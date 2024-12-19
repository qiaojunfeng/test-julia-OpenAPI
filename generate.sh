#!/bin/bash

openapi-generator generate \
    -i MWE.yaml \
    -g julia-client \
    -o client

openapi-generator generate \
    -i MWE.yaml \
    -g julia-server \
    -o server
