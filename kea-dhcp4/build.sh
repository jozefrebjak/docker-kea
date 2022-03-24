#!/bin/bash

VERSION=2.1.3

docker build . \
    --progress=plain \
    --build-arg VERSION=$VERSION \
    -t jozefrebjak/kea-dhcp4:$VERSION