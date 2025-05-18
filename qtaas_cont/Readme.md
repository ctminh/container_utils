## Docker Image and Container for QTaaS

To build a Docker image, please follow `build_images.sh`. The Docker image is built based on the container of Dockerfile.
To create a Docker container, please follow `create_container.sh`. Note that please adjust the name of image or container to fit the purpose as well as avoid the conflict.

Sharing folders between host and container:
```Bash
docker run --name qtass_node \
    --mount type=bind,source=/Users/di35hef/Projects/mqss,target=/home/admin/shared \
    -it qtass_img:1.0
```

where, `--mount` to mount, `source` indicates the folder path on the host side that you want to share, `target` indicates the folder inside Docker containers.