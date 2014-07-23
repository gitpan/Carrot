package Carrot::Personality::Valued::Perl::Package_Name::Wild
# /type class
# //parent_classes
#	::Personality::Elemental::Scalar::Textual
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';

	
	my $syntax_re = '(^|::)(\w+|\[=(package|sibling|parent|project|former|generic_oo|singular_monad)=\])(::\w+)*$';
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

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.49
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
