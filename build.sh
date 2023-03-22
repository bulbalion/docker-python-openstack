#!/bin/bash
docker build --build-arg NOCACHE=0 -t "openstack-client:latest" .
