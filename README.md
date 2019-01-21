[![Docker pulls](https://img.shields.io/docker/pulls/cumi/mbox.svg )](https://hub.docker.com/r/cumi/mbox)

Mbox
====

Mbox is a lightweight *sandboxing* mechanism that any user can use
*without special privileges* in commodity operating systems. For more
details, see doc/NOTE.web or visit
[the website](http://pdos.csail.mit.edu/mbox/).

Getting started
===============

    $ cd src
    $ cp {.,}configsbox.h
    $ ./configure
    $ make

     - src/tests-sbox    : test codes
          /sbox.{c,h}    : system call hooks
          /mbox.c        : main

    $ ./mbox -h          : help
    $ ./mbox ls          : give it a shot
    $ ./testall.sh       : test all unit tests
    
    $ ./mbox -s ls       : run ls with seccomp/bpf (if supported)

Use cases
=========

    $ ./mbox -i -- wget google.com      : a simple use
    $ ./mbox -n -i -- wget google.com   : no network

Docker
=========

is important to add  `--security-opt seccomp:unconfined`  for running  `mbox` inside docker-container.

basic mbox dockaer:
```
docker run -it --security-opt seccomp:unconfined --rm cumi/mbox
```
advance: you could extends  `cumi/mbox` in any project.

