#!/bin/bash

DIR="$HOME/.config/fastfetch/ascii"
OUT="$HOME/.config/fastfetch/logo.txt"

file=$(ls "$DIR" | shuf -n 1)

colors=(
$'\e[38;2;245;224;220m'  # rosewater
$'\e[38;2;242;205;205m'  # flamingo
$'\e[38;2;245;194;231m'  # pink
$'\e[38;2;203;166;247m'  # mauve
$'\e[38;2;250;179;135m'  # peach
$'\e[38;2;249;226;175m'  # yellow
$'\e[38;2;166;227;161m'  # green
$'\e[38;2;148;226;213m'  # teal
$'\e[38;2;137;220;235m'  # sky
$'\e[38;2;116;199;236m'  # sapphire
$'\e[38;2;180;190;254m'  # lavender
)

c1=${colors[$RANDOM % ${#colors[@]}]}
c2=${colors[$RANDOM % ${#colors[@]}]}

content=$(cat "$DIR/$file")

content=${content//\$1/$c1}
content=${content//\$2/$c2}

printf "%b\n" "$content" > "$OUT"
printf "\e[0m" >> "$OUT"
