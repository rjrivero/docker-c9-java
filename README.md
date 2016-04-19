Cloud9 IDE container with JVM
=============================

Cloud 9 IDE SDK container based on [rjrivero/c9-node](https://hub.docker.com/r/rjrivero/c9-node/), with an additional Java v8 JRE.

To build the container:

```
git clone https://github.com/rjrivero/docker-c9-java
cd docker-c9-java

# To build the x86 version
docker build --rm -t c9-java .
```

To run:

```
docker run --rm -it -p 8080:8080 -p 3000:3000 -p 3001:3001 -p 5858:5858 \
           -v </my/node/app/folder>:/home/c9/dev \
           -v </my/static/content/folder>:/home/c9/www \
           -e C9_PASSWORD=mypassword \
           --name c9-java c9-java
```
