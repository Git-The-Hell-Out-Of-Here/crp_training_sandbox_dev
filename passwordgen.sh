#!/bin/bash

WORDLIST="wordlist.txt"
ACCOUNTS=$(seq -w 1 30)

for i in $ACCOUNTS; do
  WORDS=$(shuf -n 3 "$WORDLIST" | awk '{print $2}' | paste -sd'.')
  DIGITS=$(shuf -i 1000-9999 -n 1)
  echo "account$i: ${WORDS}!${DIGITS}"
done
