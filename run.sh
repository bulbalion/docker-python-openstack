#!/bin/bash
docker run -it  \
  --name=openstack-client \
  -v /tmp:/tmp/host \
  openstack-client:latest \
  /bin/bash
