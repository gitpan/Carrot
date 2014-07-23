#--8<-- package-Carrot::Personality::Valued::Number-head -->8--#
package Carrot::Personality::Valued::Number
# /type class
# //parent_classes
#	::Personality::Elemental::Scalar::Numeric
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::Number-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Elemental::Scalar::Numeric));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/Number./shadow-development.tmp.pm');
	} #END-1406047946

	
	my $syntax_re = '^(?:\+|-|)(?:\d*).?(?:\d*)$';
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

#--8<-- sub-is_positive-head -->8--#
sub is_positive
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_positive-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} > 0);
} #--8<-- sub-is_positive-close -->8--#

#--8<-- sub-is_negative-head -->8--#
sub is_negative
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_negative-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} < 0);
} #--8<-- sub-is_negative-close -->8--#

#--8<-- sub-is_even-head -->8--#
sub is_even
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_even-open -->8--#
	my () = @ARGUMENTS;
	return((${$_[THIS]} % 2) == 0);
} #--8<-- sub-is_even-close -->8--#

#--8<-- sub-is_odd-head -->8--#
sub is_odd
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_odd-open -->8--#
	my () = @ARGUMENTS;
	return((${$_[THIS]} % 2) == 1);
} #--8<-- sub-is_odd-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::Number-close -->8--#
# //revision_control
#	version 1.1.46
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"