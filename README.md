### This image is built to run on s390x architecture.
-    [build source](https://github.com/YBA-IBM/memcached)
-    [original source code](https://github.com/docker-library/memcached)

# Tags

-	[`1.6.8`]

# Memcached

Memcached is a general-purpose distributed memory caching system. It is often used to speed up dynamic database-driven websites by caching data and objects in RAM to reduce the number of times an external data source (such as a database or API) must be read.

Memcached's APIs provide a very large hash table distributed across multiple machines. When the table is full, subsequent inserts cause older data to be purged in least recently used order. Applications using Memcached typically layer requests and additions into RAM before falling back on a slower backing store, such as a database.

> [wikipedia.org/wiki/Memcached](https://en.wikipedia.org/wiki/Memcached)

# How to use this image

```console
$ docker run --name my-memcache -d memcached
```

## Setting Memory Usage

```console
$ docker run --name my-memcache -d memcached memcached -m 64
```

This would set the Memcached server to use 64 megabytes for storage.

For infomation on configuring your memcached server, see the extensive [wiki](https://github.com/memcached/memcached/wiki).

# License

View [license information](https://github.com/memcached/memcached/blob/master/LICENSE) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `memcached/` directory](https://github.com/docker-library/repo-info/tree/master/repos/memcached).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
