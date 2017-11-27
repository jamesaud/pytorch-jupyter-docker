# pytorch-jupyter-docker

Docker & Docker-Compose files for running Pytorch & Jupyter Notebook

First, copy the Dockerfile & docker-compose file into your work directory.

To build the image, first run:

> docker-compose build

Then run:

> docker-compose up

Jupyter should be running on localhost:8888

The directory with the docker-compose file is mounted, change the mounted folder in the docker-compose file.

Use the Python [Default] Kernel.
