#!/bin/bash

# openapi-generator 7.10.0
exe=openapi-generator
$exe generate \
    -i MWE.yaml \
    -g julia-client \
    -o client
$exe generate \
    -i MWE.yaml \
    -g julia-server \
    -o server

# my branch https://github.com/qiaojunfeng/openapi-generator/tree/fix/julia_file
exe="java -jar $HOME/git/openapi-generator/modules/openapi-generator-cli/target/openapi-generator-cli.jar"
$exe generate \
    -i MWE.yaml \
    -g julia-client \
    -o client_new
$exe generate \
    -i MWE.yaml \
    -g julia-server \
    -o server_new
