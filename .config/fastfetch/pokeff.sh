#!/bin/bash

tmpfile=$(mktemp)

if [ $# -gt 0 ]; then
  pokeget "$@" --hide-name >"$tmpfile"
else
  pokeget random --hide-name >"$tmpfile"
fi

if grep -qi "pokemon not found" "$tmpfile"; then
  echo "Pokemon not found."
  rm "$tmpfile"
  exit 1
fi

fastfetch --logo-type file --logo "$tmpfile"

rm "$tmpfile"
