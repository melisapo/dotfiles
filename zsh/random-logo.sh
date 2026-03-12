#!/bin/bash

DIR="$HOME/.config/zsh/ascii"

file=$(ls "$DIR" | shuf -n 1)

mapfile -t lines < "$DIR/$file"

# colores Catppuccin pastel
colors=(
"245;194;231"  # pink
"203;166;247"  # mauve
"166;227;161"  # green
"249;226;175"  # yellow
"137;180;250"  # blue
"148;226;213"  # teal
)

start=${colors[$RANDOM % ${#colors[@]}]}
end=${colors[$RANDOM % ${#colors[@]}]}

IFS=';' read sr sg sb <<< "$start"
IFS=';' read er eg eb <<< "$end"

count=${#lines[@]}

for i in "${!lines[@]}"; do

    t=$(awk "BEGIN {print $i/($count-1)}")

    r=$(awk "BEGIN {printf \"%d\", $sr + ($er-$sr)*$t}")
    g=$(awk "BEGIN {printf \"%d\", $sg + ($eg-$sg)*$t}")
    b=$(awk "BEGIN {printf \"%d\", $sb + ($eb-$sb)*$t}")

    printf "\e[38;2;%d;%d;%dm%s\e[0m\n" "$r" "$g" "$b" "${lines[$i]}"

done
