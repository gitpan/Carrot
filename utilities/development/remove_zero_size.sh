#! /bin/sh
cd /home/mica_environment || exit 1

find /home/mica_environment/ \
	-size 0 \
	-print0 \
| xargs -0 -n 50 rm --
