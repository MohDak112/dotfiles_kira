#!/bin/sh

TMP="/tmp/poke_logo.txt"

pokeget random --hide-name> "$TMP"
fastfetch --logo "$TMP"

rm "$TMP"
