Squid
=====

Slim image (18MB) of Squid 3.5.4 running under Alpine Linux 3.2.

The squid uses upstream proxy.bdpnet.dk:8080 and redirects http://updates.jenkins-ci.org/download/* to http://ftp-chi.osuosl.org/pub/jenkins/* to avoid ending up on mirrors which are not supported by the BD proxy.

How to use
=========

```
make build
make run
```

