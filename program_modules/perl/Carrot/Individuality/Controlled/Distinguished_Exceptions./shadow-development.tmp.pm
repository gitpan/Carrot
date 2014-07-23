#--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions-head -->8--#
package Carrot::Individuality::Controlled::Distinguished_Exceptions
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# //tabulators
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw()]);
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Distinguished_Exceptions./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $localized_messages = '::Individuality::Controlled::Localized_Messages');
	$expressiveness->package_resolver->provide(
		my $monad_class = '[=this_pkg=]::Monad');

	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

#--8<-- sub-manual_individuality-head -->8--#
sub manual_individuality
# /type method
# /effect "Returns an individual monad for a package."
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
#	?
{ #--8<-- sub-manual_individuality-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	$meta_monad->provide(
		my $localized_messages = '::Individuality::Controlled::Localized_Messages');
	my $monad = $monad_class->indirect_constructor(
		$localized_messages);

	return($monad);
} #--8<-- sub-manual_individuality-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions-close -->8--#
# //revision_control
#	version 1.1.68
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"