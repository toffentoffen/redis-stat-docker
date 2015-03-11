#!/bin/bash

if [ -z $REDIS_HOST ] || [ -z $REDIS_PORT ]; then
    echo "vars REDIS_HOST $REDIS_HOST and REDIS_PORT $REDIS_HOST must be setted"
else
    echo "Running redis-stat on REDIS_HOST $REDIS_HOST and REDIS_PORT $REDIS_PORT"
    java -jar redis-stat-0.4.11.jar $REDIS_HOST:$REDIS_PORT --server
fi
