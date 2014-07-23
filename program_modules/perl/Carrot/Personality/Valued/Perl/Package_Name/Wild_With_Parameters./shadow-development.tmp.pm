#--8<-- package-Carrot::Personality::Valued::Perl::Package_Name::Wild_With_Parameters-head -->8--#
package Carrot::Personality::Valued::Perl::Package_Name::Wild_With_Parameters
# /type class
# //parent_classes
#	::Personality::Elemental::Scalar::Textual
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::Perl::Package_Name::Wild_With_Parameters-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Elemental::Scalar::Textual));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/Perl/Package_Name/Wild_With_Parameters./shadow-development.tmp.pm');
	} #END-1406047946


	my $syntax_re = '(^|::)(\w+|\[=(variant|any|package|parent_name|grandparent_name|project|generic_oo|singular_monad)=\])(::\w+)*(\h+|$)';
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

#--8<-- sub-indirect_instance-head -->8--#
sub indirect_instance
# /type method
# /effect ""
# //parameters
#	class_names
#	*
# //returns
#	?
{ #--8<-- sub-indirect_instance-open -->8--#
	my ($this, $class_names) = splice(\@ARGUMENTS, 0, 2);

	$$this =~ s{\h+$}{}s;
	my (@arguments) = split(qr{\h+}, $$this, PKY_SPLIT_RETURN_FULL_TRAIL);
	my $pkg_name = shift(@arguments);
	#--8<-- if-ANON00092-head -->8--#
	if ($pkg_name =~ m{^::(Continuity|Modularity|Personality|Productivity)::})
	{ #--8<-- if-ANON00092-open -->8--#
		$pkg_name = 'Carrot::'.$pkg_name;
	} #--8<-- if-ANON00092-close -->8--#
	my $instance = $class_names->indirect_instance(
		$pkg_name,
		@ARGUMENTS,
		@arguments);

	return($instance);
} #--8<-- sub-indirect_instance-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::Perl::Package_Name::Wild_With_Parameters-close -->8--#
# //revision_control
#	version 1.1.79
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"