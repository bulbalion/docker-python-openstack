FROM debian:latest

RUN apt-get update && apt-get -y install bash \
  rsync vim screen git make automake

# https://pypi.org/project/python-openstackclient
# pip install python-openstackclient

RUN cd /root && git clone https://github.com/openstack/python-openstackclient && \
  apt-get install -y make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
  libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl \
  python3-pip && cd /root/python-openstackclient &&  python3 ./setup.py develop
