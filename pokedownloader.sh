#!/bin/bash

for i in `seq 1 718`; do
	#DO YOU EVEN LIFT?
	curl https://www.pokeapi.co/media/img/$i.png > $i.png
done
