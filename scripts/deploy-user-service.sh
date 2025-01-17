#!/bin/bash

set -exu

CONTEXT=${1-'kind-kind-1'}
ENV=${2-prod}

kubectl create ns user-service || true

kubectx ${CONTEXT}

kubectl apply -k kustomize/apps/setups/user-service/$ENV
