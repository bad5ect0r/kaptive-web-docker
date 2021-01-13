# How to use

1. Clone this repo:

```
$ git clone https://github.com/bad5ect0r/kaptive-web-docker.git
```

2. Build the container:

```
$ cd kaptive-web-docker
$ docker build -t kaptive .
```

3. Run the container:

```
$ docker run --rm --name kaptive -p 8000:8000 kaptive
```
