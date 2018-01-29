Docker container running SteamCMD. Can be used to install Steam based dedicated servers and run them in a Docker container.

### Build on top
Usage when building a new image (replace <APP_ID> with the Steam APP ID):
```dockerfile
FROM biseque/steamcmd
RUN /steamcmd/steamcmd.sh +login anonymous +force_install_dir /data +app_update <APP_ID> +quit
```

### Standalone
Usage as standalone container:
```console
$ docker run -v $pwd:/data biseque/steamcmd +login anonymous +force_install_dir /data +app_update <APP_ID> +quit
```