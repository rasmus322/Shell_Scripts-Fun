#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage:"
  echo "  ./$0 'your_archive.zip||.tar||...'"
  exit 0
fi

file=$@

extract() {
  if hash dtrx 2> /dev/null; then
    dtrx $@
  else 
    echo "Please install dtrx:"
    echo "  Arch Linux: yay -S dtrx"
    echo "  Debian: sudo apt-get install dtrx"
    exit 0
  fi
}

extract $file