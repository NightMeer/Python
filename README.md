# Python 11 Docker

Each branch has its own Files for Docker

## Additional


Docker requires a startup file named main.py which must be placed in the src folder. This file contains the main code that will be executed when the Docker container is run.
Here is an example of a Dockerfile that specifies main.py as the startup file

## Docker Compose

```
services:
    python:
    image: ghcr.io/nightmeer/python:latest
    restart: unless-stopped
    volumes:
      - ./src:/src
    environment:
      - FILENAME=main.py
      - ADDITIONAL_COMMAND=
      #Space separiert
      - PACKAGES=
      #Proxy
      - http_proxy=
      - https_proxy=
```

## Docker Start
```

Docker Start -v ./src:/src -e "FILENAME=main.py" ghcr.io/nightmeer/python:latest 

```
