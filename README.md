# ts-express-sample
Typescript Node JS Sample Project App

More info in: [The Why and How to use Multi-Stage Docker Builds for Lean Production Images](https://medium.com/@ankit.wal/the-why-and-how-of-multi-stage-docker-build-with-typescript-example-bcadbce2686c) and 
[Development of NodeJS application with Docker and Typescript [Part 1]](https://medium.com/@VincentSchoener/development-with-docker-and-typescript-75956e1af4ca)

## [Build docker image](https://docs.docker.com/engine/reference/commandline/build/)

```bash
docker build -t dennisseidel/ts-sample:v1 ./
```

## [Run docker image](https://docs.docker.com/engine/reference/commandline/run/)

```bash
docker run -p 80:8000 dennisseidel/ts-sample:v1
```

## Push Image to repo

```bash
docker push dennisseidel/ts-sample:v1
```


## Test connectivity

```bash
curl http://localhost:80/hello
```