# Animals or Food

See [blog post] and http://www.mirror.co.uk/news/weird-news/muffins-chihuahuas-bizarre-picture-quiz-7539743

## Docker

1. Build the docker image with the provided Dockerfile

```
docker build -t animals_or_food .
```

2. Make an env file with your credentials (for convenience and security),
replacing each field in brackets with their respective values.

```
cat << EOF > credentials.env
CLOUDSIGHT_API_KEY=[your API key]
CLOUDSIGHT_API_SECRET=[your API secret]
EOF
```

3. Run the docker container with your credentials

```
docker run --rm -it --env-file=credentials.env -v ${PWD}/out:/app/out animals_or_food
```

4. If all goes well, you should see something like the following:

```
Sending 'out/tile000.jpg'
Sending 'out/tile001.jpg'
Sending 'out/tile002.jpg'
Sending 'out/tile003.jpg'
Sending 'out/tile004.jpg'
Sending 'out/tile005.jpg'
Sending 'out/tile006.jpg'
Sending 'out/tile007.jpg'
Sending 'out/tile008.jpg'
Sending 'out/tile009.jpg'
Sending 'out/tile010.jpg'
Sending 'out/tile011.jpg'
Sending 'out/tile012.jpg'
Sending 'out/tile013.jpg'
Sending 'out/tile014.jpg'
Sending 'out/tile015.jpg'
Received 'out/tile000.jpg'
Received 'out/tile001.jpg'
Received 'out/tile002.jpg'
Received 'out/tile003.jpg'
Received 'out/tile004.jpg'
Received 'out/tile005.jpg'
Received 'out/tile006.jpg'
Received 'out/tile007.jpg'
Received 'out/tile008.jpg'
Received 'out/tile009.jpg'
Received 'out/tile010.jpg'
Received 'out/tile011.jpg'
Received 'out/tile012.jpg'
Received 'out/tile013.jpg'
Received 'out/tile014.jpg'
Received 'out/tile015.jpg'
```

5. Examine the responses in `./out/responses.csv`
