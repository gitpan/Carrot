#--8<-- package-Carrot::Personality::Valued::Number::Integer::Positive-head -->8--#
package Carrot::Personality::Valued::Number::Integer::Positive
# /type class
# //parent_classes
#	[=component_pkg=]::Number::Integer
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::Number::Integer::Positive-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Valued::Number::Integer));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/Number/Integer/Positive./shadow-development.tmp.pm');
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
	return(IS_FALSE) unless ($_[THIS]->superseded($_[SPX_VALUE]));
	return($_[SPX_VALUE] > 0);
} #--8<-- sub-is_valid_input_value-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::Number::Integer::Positive-close -->8--#
# //revision_control
#	version 1.1.68
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"