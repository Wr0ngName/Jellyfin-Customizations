# Jellyfin-Customizations
Persist customizations in Jellyfin docker

## Introduction
With LinuxServer.io image, we can use the custom-cont-init.d special folder to apply patches and create persistence.

## How to use
Add a volume to your docker container:

```
    volumes:
      - jellyfin-custom:/custom-cont-init.d:ro
```
And place your scripts in it. They will run at startup.

## Content
Some bash script to replace or add some links in different places.
