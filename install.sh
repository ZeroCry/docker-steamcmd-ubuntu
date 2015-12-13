#!/usr/bin/env bash

if [ -f "./install.txt" ]; then
  echo "Running steamcmd.." >&2
  if [ -f "./credentials.txt" ]; then
    ./steamcmd.sh +runscript credentials.txt +runscript install.txt +quit
  else
    ./steamcmd.sh +login anonymous +runscript install.txt +quit
  fi
else
  echo "Skipping steamcmd - no install.txt supplied" >&2
fi
