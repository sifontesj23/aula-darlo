#!/bin/bash

VERSAO="0.1"

## Cria a imagem base
docker build -t st:base -f Dockerfile_base .

## Cria a imagem com a aplicação
docker build --no-cache -t st:${VERSAO} .

## Define a nova imagem como latest
docker tag st:${VERSAO} st
