#!/bin/bash
ZKCLUSTER=$1
WEBPORT=$2
: ${ZKCLUSTER:=localhost}
: ${WEBPORT:=5050}
export ZK_HOSTS="$ZKCLUSTER:2181"
echo "ZK_HOSTS: $ZK_HOSTS"
python -mwebbrowser "http://localhost:$WEBPORT"
/Users/yan/Applications/kafka-manager-1.2.4/bin/kafka-manager -Dhttp.port="$WEBPORT"
