# Outline Server with ARM64 support

Port of fancy Jigsaw [Outline server](https://github.com/Jigsaw-Code/outline-server) with arm64 support.

## Important changes

1. Third party binaries replaced with their arm64 builds
  * [Outline ss-server v1.3.5](https://github.com/Jigsaw-Code/outline-ss-server/releases/tag/v1.3.5)
  * [Prometheus 2.33.4 / 2022-02-22](https://github.com/prometheus/prometheus/releases/tag/v2.33.4)
2. Node docker image for shadowbox replaced with arm64 build 
  * [arm64v8/node:lts-alpine3.15](https://hub.docker.com/r/arm64v8/node/)

## Install and run

 ```bash
  $ sudo SB_IMAGE="kugaevsky/outline-server-arm64" bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
```

## Contribute

### Build docker image

```bash 
  $ scripts/run_action.sh shadowbox/docker/update_third_party
  $ DOCKER_CONTENT_TRUST=0 SB_IMAGE=kugaevsky/outline-server-arm64 scripts/run_action.sh shadowbox/docker/build
```