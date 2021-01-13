# Credit

The original Kaptive project was found under [katholt's repository](https://github.com/katholt/Kaptive).

They have a [separate repository for the web application](https://github.com/kelwyres/Kaptive-Web). This one is by kelwyres.

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
