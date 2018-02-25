#!/bin/sh -e
(cd release/src/router/libnfsidmap && ./autogen.sh)
(cd release/src/router/openvpn && autoreconf -i)
(cd release/src/router/sqlite && autoreconf -i)
