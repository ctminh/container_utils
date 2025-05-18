# create a new docker container
docker run --name qtass_node \
    --mount type=bind,source=/Users/di35hef/Projects/mqss,target=/home/admin/shared \
    -it qtass_img:1.0

# run docker exec from multiple terminals to launch several sessions connected to the same container
# this is to already running container's bash prompt
# docker exec -it mqss_container bash

# others
# --privileged --tmpfs /tmp --tmpfs /run --tmpfs /run/lock \

