#! /bin/sh

cd /tmp/mica_environment || exit 1

find . \
	\( -name managed_modularity-*.pl \
-o \
	-name shadow-*.pm \) \
	-print0 \
| xargs -0 rm --
