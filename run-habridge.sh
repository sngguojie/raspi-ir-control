#bash
docker run \
    --name ha-bridge \
    --rm \
    --init \
    --detach \
    --net=host \
    --volume=$PWD:/ha-bridge/data \
    --volume=/etc/localtime:/etc/localtime:ro \
    --volume=/etc/timezone:/etc/timezone:ro \
    habridge/ha-bridge-raspberrypi3

