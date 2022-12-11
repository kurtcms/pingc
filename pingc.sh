#!/bin/bash

trap echo 0

ping $* | while read line; do

  [[ "$line" =~ ^PING ]] && continue
  [[ ! "$line" =~ "bytes from" ]] && continue

  dt=$(date +'%Y%m%d%H%M%S')
  et=$(date +%s)

  addr=${line##*bytes from }
  addr=${addr%%:*}

  rtt=${line##*time=}
  rtt=${rtt%% *}

  echo -n "$dt,$et,$addr,$rtt"
  echo
done