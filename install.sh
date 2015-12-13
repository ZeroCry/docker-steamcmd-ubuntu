#!/usr/bin/env bash

if [ -f "./install.txt" ]; then
  ./steamcmd.sh +runscript install.txt +quit
else
  echo "Skipping game install - no install.txt supplied" >&2
fi
