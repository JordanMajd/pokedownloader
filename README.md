# Pokedownloader

This bash script scrapes [PokeAPI.co](http://www.pokeapi.co/) and downloads `png` images of 718 Pokemon.

![bulbasaur](examples/bulbasaur.png) ![charmander](examples/charmander.png) ![squirtle](examples/squirtle.png)

If you like or are using this script, please give it a :star: for motivation :)

## Running

Before running, you must give executable permissions:

```bash
chmod 744
```

To run the script:

```bash
./pokedownloader.sh
```

## Examples

Check out the [examples](/examples) folder for a few example images.

## Roadmap

- Use API endpoints instead of /media endpoints.
- Make an API request to get the count of available Pokemon instead of hardcoding the value.
