#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Definition/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	structure
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $structure) = @ARGUMENTS;

	$this->[ATR_STRUCTURE] = $structure;
	$this->[ATR_SOURCE] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-start_default-head -->8--#
sub start_default
# /type method
# /effect ""
# //parameters
#	source
# //returns
{ #--8<-- sub-start_default-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_SOURCE] = $_[SPX_SOURCE];
	return;
} #--8<-- sub-start_default-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate-close -->8--#
# //revision_control
#	version 1.1.61
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"