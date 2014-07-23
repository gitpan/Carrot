#--8<-- package-Carrot::Personality::Valued::Raw-head -->8--#
package Carrot::Personality::Valued::Raw
# /type class
# /attribute_type ::One_Anonymous::Scalar::Access
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::Raw-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Scalar::Access');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/Raw./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-is_valid_input_value-head -->8--#
sub is_valid_input_value
# /type method
# /effect "Verifies the parameter"
# //parameters
#	value
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_valid_input_value-open -->8--#
	my () = @ARGUMENTS;
	return(IS_TRUE);
} #--8<-- sub-is_valid_input_value-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::Raw-close -->8--#
# //revision_control
#	version 1.1.43
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"