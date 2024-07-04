#!/bin/bash

if hash toilet 2> /dev/null; then
  echo "Colorful Date :3" | toilet -f mini --gay
  sleep 1
  while true; do
    echo "$(date '+%D %T' | toilet -f term -F border --gay)"
    sleep 1
  done
else
  echo "Please install toilet script:"
  echo "Arch Linux:"
  echo "  sudo pacman -S toilet"
  echo " "
  echo "Debian:"
  echo "  sudo apt-get install toilet"
  exit 0
fi