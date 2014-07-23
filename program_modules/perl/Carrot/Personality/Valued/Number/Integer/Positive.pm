package Carrot::Personality::Valued::Number::Integer::Positive
# /type class
# //parent_classes
#	[=component_pkg=]::Number::Integer
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';


# =--------------------------------------------------------------------------= #

sub is_valid_input_value
# /type method
# /effect "Verifies the parameter"
# //parameters
#	value
# //returns
#	::Personality::Abstract::Boolean
{
	return(IS_FALSE) unless ($_[THIS]->superseded($_[SPX_VALUE]));
	return($_[SPX_VALUE] > 0);
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.68
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
