#!/bin/sh

TMP="/tmp/poke_logo.txt"

pokeget random > "$TMP"
fastfetch --logo "$TMP"

rm "$TMP"
