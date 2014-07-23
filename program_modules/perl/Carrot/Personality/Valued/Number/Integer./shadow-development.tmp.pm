#--8<-- package-Carrot::Personality::Valued::Number::Integer-head -->8--#
package Carrot::Personality::Valued::Number::Integer
# /type class
# //parent_classes
#	[=component_pkg=]::Number
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::Number::Integer-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Valued::Number));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/Number/Integer./shadow-development.tmp.pm');
	} #END-1406047946

	my $syntax_re = '^(\+|-|)(\d+)$';
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
	return($_[SPX_VALUE] =~ m{$syntax_re}so);
} #--8<-- sub-is_valid_input_value-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::Number::Integer-close -->8--#
# //revision_control
#	version 1.1.64
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"