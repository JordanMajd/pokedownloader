#!/bin/bash

# rate limit is 100 per minute
RATE_LIMIT=$(bc <<< "scale=3; 60 / 100")
echo $RATE_LIMIT

echo "Fetching number of pokemon..."
CT=$(curl -s https://pokeapi.co/api/v2/pokemon/ | cut -d ":" -f2 | cut -d "," -f1)
echo "${CT} pokemon found, downloading..."
for i in `seq 1 $CT`; do
	NAME=$(curl -s https://pokeapi.co/api/v2/pokemon/${i}/ | grep -Po ',"name":.*?[^\\]"' | cut -d'"' -f 4)
	echo "Downloading ${NAME}..."
	#DO YOU EVEN LIFT?
	curl -s https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${i}.png > images/${NAME}.png
	sleep $RATE_LIMIT
done