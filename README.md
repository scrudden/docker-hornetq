Docker image HornetQ
==================

Docker image running to [HornetQ](http://hornetq.jboss.org) in Docker and [azk](http://azk.io). This non-official image for azk.  

HornetQ versions(tags)
---

<versions>
- [2.4.0.Final](https://github.com/mansante/docker-hornetq/blob/master/2.4.0/Dockerfile) : pure version.
- [2.4.0-dev](https://github.com/mansante/docker-hornetq/blob/master/2.4.0-dev/Dockerfile) : less memory.
</versions>


Image content:
---

- Java 8 JDK
- HornetQ stand-alone

### Usage with `azk`

Example of using this image with [azk](http://azk.io):

```js


# TODO: ...

```


### Usage with `docker`

To run the image and bind to port 5445 and 5455:

```sh
$ docker run -d -p 5445:5445 -p 5455:5455 --name hornetq mansante/hornetq
```


Logs
---

```sh
# with azk
$ azk logs <SYSTEM>

# with docker
$ docker logs <CONTAINER_ID>
```
