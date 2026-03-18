#!/bin/bash

DIR="$HOME/.config/fastfetch/ascii"
OUT="$HOME/.config/fastfetch/logo.txt"

file=$(ls "$DIR" | shuf -n 1)

mapfile -t lines < "$DIR/$file"

colors=(
"245;194;231"
"203;166;247"
"166;227;161"
"249;226;175"
"137;180;250"
"148;226;213"
)

start=${colors[$RANDOM % ${#colors[@]}]}
end=${colors[$RANDOM % ${#colors[@]}]}

IFS=';' read -r sr sg sb <<< "$start"
IFS=';' read -r er eg eb <<< "$end"

count=${#lines[@]}

> "$OUT"

for i in "${!lines[@]}"; do

    t=$(awk "BEGIN {print $i/($count-1)}")

    r=$(awk "BEGIN {printf \"%d\", $sr + ($er-$sr)*$t}")
    g=$(awk "BEGIN {printf \"%d\", $sg + ($eg-$sg)*$t}")
    b=$(awk "BEGIN {printf \"%d\", $sb + ($eb-$sb)*$t}")

    printf "\e[38;2;%d;%d;%dm%s\e[0m\n" "$r" "$g" "$b" "${lines[$i]}" >> "$OUT"

done
