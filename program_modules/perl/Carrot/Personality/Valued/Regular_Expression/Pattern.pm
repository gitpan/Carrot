package Carrot::Personality::Valued::Regular_Expression::Pattern
# /type class
# /attribute_type ::One_Anonymous::Scalar::Access
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
	my $dummy = eval {
		return( qr{$_[SPX_VALUE]} );
	};
	return(defined($dummy));
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.50
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
