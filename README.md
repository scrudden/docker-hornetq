Docker image HornetQ
==================

Docker image running to [HornetQ](http://hornetq.jboss.org) in Docker and [azk](http://azk.io). This non-official image for azk.  

HornetQ versions(tags)
---

<versions>
- [2.4.0.Final](https://github.com/mansante/docker-hornetq/blob/master/2.4.0/Dockerfile) : pure version.
- [2.4.0-dev](https://github.com/mansante/docker-hornetq/blob/master/2.4.0-dev/Dockerfile) : low memory.
</versions>


Image content:
---

- Java 8 JDK
- HornetQ stand-alone

### Usage with `azk`

Example of using this image with [azk](http://azk.io):

```js
/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */
// Adds the systems that shape your system
systems({
  hornetq: {
    // More images:  http://images.azk.io
    image: {'docker': 'mansante/hornetq'},
    scalable: false,
    wait: {'retry': 20, 'timeout': 300},
    ports: {
      jms: '5445:5445/tcp',
      batch: '5455:5455/tcp',
    },
  },
});

```

Example of using this image with local folder config:

```js
/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */
// Adds the systems that shape your system
systems({
  hornetq: {
    // More images:  http://images.azk.io
    image: {'docker': 'mansante/hornetq'},
    scalable: false,
    wait: {'retry': 20, 'timeout': 300},
    shell: '/bin/bash',
    command: 'bash ./run.sh /config',
    mounts: {
      // copnfig - internal folder on the container
      // conf/hornetq - local path hornetq configurations 
      '/config': path("conf/hornetq"),
    },
    ports: {
      jms: '5445:5445/tcp',
      batch: '5455:5455/tcp',
    },
  },
});
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
