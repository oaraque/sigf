#!/bin/bash

# Simple wrapper around docker cli

docker run --rm -ti oaraque/sigf:latest java de/pado/sigf/FScoreART $1 $2 $3
