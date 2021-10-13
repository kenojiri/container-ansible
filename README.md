# ansible container image
- based on [Debian 11.1 (bullseye)](https://www.debian.org/releases/stable/amd64/release-notes/index.en.html)

[![Docker Pull Counter](https://img.shields.io/docker/pulls/ozzozz/ansible.svg)](https://hub.docker.com/r/ozzozz/ansible/)

## usage

### Kubernetes
- to get BASH shell prompt in `ansible` Pod

```
$ kubectl run ansible -it --rm --image=ozzozz/ansible --command -- bash --login
```

### Docker
- to get BASH shell prompt

```
$ docker run -it --rm -v $PWD:/work ozzozz/ansible
```

## commands you can run

* ssh
  * scp
  * sftp
* tar
  * gunzip
* zip
  * unzip
* wget
* curl
* git
* jq
* vim
* mc [(Minio CLI)](https://docs.minio.io/docs/minio-client-quickstart-guide)
