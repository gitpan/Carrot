﻿package Carrot::Personality::Valued::Internet::Protocol::HTTP::Header::Lines;

use strict;
use warnings;

sub header_x_forwarded_for
# /type method
# /effect ""
# //parameters
# //returns
#	?
{
	return($_[THIS]->by_name('X-Forwarded-For'));
}

return(1);
