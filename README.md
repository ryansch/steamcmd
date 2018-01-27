# steamcmd
Use it as standalone or build a new docker image on top of it.

Usage in Docker:
FROM biseque/steamcmd

RUN /steamcmd/steamcmd.sh +login anonymous +force_install_dir /data +app_update <APP_ID> +quit

Usage standalone:
docker run -v $pwd:/data biseque/steamcmd +login anonymous +force_install_dir /data +app_update <APP_ID> +quit