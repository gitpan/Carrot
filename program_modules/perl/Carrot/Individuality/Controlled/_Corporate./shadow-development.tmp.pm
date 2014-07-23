#--8<-- package-Carrot::Individuality::Controlled::_Corporate-head -->8--#
package Carrot::Individuality::Controlled::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_MONADS] = IS_UNDEFINED;
	$this->[ATR_MONAD_CLASS] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-manual_principle-head -->8--#
sub manual_principle
# /type method
# /effect "Returns an individual monad for a package."
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-manual_principle-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	my $pkg_name = $meta_monad->package_name->value;
	my $monads = $this->[ATR_MONADS];
	#--8<-- if-ANON00012-head -->8--#
	if (exists($monads->{$pkg_name}))
	{ #--8<-- if-ANON00012-open -->8--#
		return($monads->{$pkg_name});
	} #--8<-- if-ANON00012-close -->8--#

	return($monads->{$pkg_name} =
		$this->_manual_principle($meta_monad));
} #--8<-- sub-manual_principle-close -->8--#

#--8<-- sub-_manual_principle-head -->8--#
sub _manual_principle
# /type method
# /effect ""
# /parameters *
# /returns *
{ #--8<-- sub-_manual_principle-open -->8--#
	my () = @ARGUMENTS;
	return(shift(\@ARGUMENTS)->[ATR_MONAD_CLASS]->indirect_constructor(@ARGUMENTS));
} #--8<-- sub-_manual_principle-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::_Corporate-close -->8--#
# //revision_control
#	version 1.1.104
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"