#!/bin/bash

echo "Fetching number of pokemon..."
CT=$(curl https://pokeapi.co/api/v2/pokemon/ | cut -d ":" -f2 | cut -d "," -f1)
echo "$CT pokemon found, downloading..."
for i in `seq 1 $CT`; do
	#DO YOU EVEN LIFT?
	curl https://www.pokeapi.co/media/img/$i.png > $i.png
done
