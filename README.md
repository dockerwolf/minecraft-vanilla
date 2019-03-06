# Minecraft

[![](https://images.microbadger.com/badges/image/cwlf/minecraft-vanilla.svg)](https://microbadger.com/images/cwlf/minecraft-vanilla)

These are docker images for [Vanilla Minecraft](https://minecraft.net) running on an [OpenJDK OpenJ9 container](https://registry.hub.docker.com/u/cwlf/openjdk-openj9/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockerwolf/minecraft-vanilla/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/cwlf/minecraft-vanilla/tags/), these lists are always up to date.


## Volumes

* /minecraft/merge
* /minecraft/world
* /minecraft/logs


## Ports

* 25565
* 25575


## Available environment variables

```bash
ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie
ENV JAVA_OPTS -server -XX:+UseConcMarkSweepGC
```


## Inherited environment variables

* [dockerwolf/openjdk-openj9](https://github.com/dockerwolf/openjdk-openj9#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Chip Wolf](https://github.com/chipwolf)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
Copyright (c) 2019 Chip Wolf <https://chipwolf.uk>
```
