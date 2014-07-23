﻿package Carrot::Personality::Valued::Number
# /type class
# //parent_classes
#	::Personality::Elemental::Scalar::Numeric
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';

	
	my $syntax_re = '^(?:\+|-|)(?:\d*).?(?:\d*)$';
# =--------------------------------------------------------------------------= #

sub is_valid_input_value
# /type method
# /effect "Verifies the parameter"
# //parameters
#	value
# //returns
#	::Personality::Abstract::Boolean
{
	return($_[SPX_VALUE] =~ m{$syntax_re}so);
}

sub is_positive
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{
	return(${$_[THIS]} > 0);
}

sub is_negative
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{
	return(${$_[THIS]} < 0);
}

sub is_even
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{
	return((${$_[THIS]} % 2) == 0);
}

sub is_odd
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{
	return((${$_[THIS]} % 2) == 1);
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.46
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
