#! /bin/sh

ORIGINAL="$1"
DUPLICATE="$2"

test -d "$ORIGINAL." && cp -a "$ORIGINAL." "$DUPLICATE."
test -f "$ORIGINAL.pm" && cp -a "$ORIGINAL.pm" "$DUPLICATE.pm"

for i in `find "$DUPLICATE.pm" "$DUPLICATE." -type f`
do
	sed -e "s,\(::|/\)$ORIGINAL,\\1$DUPLICATE,g" \
		"$i" > "$i.tmp" \
	&& cp "$i.tmp" "$i" \
	&& rm "$i.tmp"
done
