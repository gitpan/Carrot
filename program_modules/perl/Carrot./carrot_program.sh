#!/bin/sh
exec /usr/bin/perl -e 'require Carrot; require(Carrot::main());' \
	-W -I/tmp/mica_environment/program_modules/perl \
	-- \
	--carrot-main=Carrot./carrot_program.pl \
	$@
