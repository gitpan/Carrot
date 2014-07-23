#--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Constants-head -->8--#
package Carrot::Individuality::Controlled::Localized_Messages::Constants
# /type class
# /attribute_type ::One_Anonymous::Scalar
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Constants-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Scalar');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Localized_Messages/Constants./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

sub HKY_DEX_LINE_COUNT() { "\x{2}\@" }
sub HKY_DEX_LANGUAGE() { "\x{2}!" }
sub HKY_DEX_CALLER_OFFSET() { "\x{2}#" }
sub HKY_DEX_BACKTRACK() { "\x{2}?" }

#--8<-- sub-provide_constants-head -->8--#
sub provide_constants
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-provide_constants-open -->8--#
	my () = @ARGUMENTS;
	return('HKY_DEX_', [qw(
		LINE_COUNT
		LANGUAGE
		CALLER_OFFSET
		BACKTRACK)]);
} #--8<-- sub-provide_constants-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Constants-close -->8--#
# //revision_control
#	version 1.1.44
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"