# nginx-mirror

## Description
The purpose of this docker images is to create a container with nginx serving one only file. It might be the case that you want to distribute bandwith to serve one file to multiple clients.

### You need:
  - URL of the file to mirror (it must be public mirrored)

## Specificatons of the image
### Exposed ports
- 80
- 443

### Environment variables
- URL_FILE: URL of the file to fetch and mirror


## How to build

```sh
$ docker build -t nginx-mirror .
```
## How to run from local build

```sh
$ docker run -d -p 80:80 -p 443:443 -e URL_FILE=http://server.com/file nginx-mirror
```

## How to run from DockerHub automated build

```sh
$ docker run -d -p 80:80 -p 443:443 -e URL_FILE=http://server.com/file pmoncadaisla/nginx-mirror
```
