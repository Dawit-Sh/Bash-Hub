#!/bin/sh

country=Ethiopia

stats=$(curl -s "https://corona-stats.online/${country}/?source=2&format=json" | jq '.data[]')
deaths=$(echo "${stats}" | jq '.deaths')
cases=$(echo "${stats}" | jq '.cases')
deathrate=''$(echo "(${deaths}" / "${cases}) * 100" | bc -l | cut -c -3)'%'
deathrate=$(printf "😷 Cases:  %s
💀 Deaths: %s

%s 💀/😷 in Ethiopia
form COVID-19" "${cases}" "${deaths}" "${deathrate}")
notify-send "${deathrate}"

# vim: set tw=78 ts=2 et sw=2 sr:
