#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Flat-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Definition::Flat
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Flat-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Definition/Flat./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $values_class = '[=project_pkg=]::Structure::Flat::Plain');

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

	#--8<-- if-ANON00082-head -->8--#
	if (!$structure->isa('Carrot::Individuality::Controlled::Customized_Settings::Structure'))
	{ #--8<-- if-ANON00082-open -->8--#
		$structure = $values_class->indirect_constructor($structure);
	} #--8<-- if-ANON00082-close -->8--#
	$this->superseded($structure);

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-implement-head -->8--#
sub implement
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-implement-open -->8--#
	my ($this) = @ARGUMENTS;

	#--8<-- if-ANON00083-head -->8--#
	if (defined($this->[ATR_SOURCE]))
	{ #--8<-- if-ANON00083-open -->8--#
		$this->[ATR_STRUCTURE]->initialize($this->[ATR_SOURCE]);
		$this->[ATR_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00083-close -->8--#
	return($this->[ATR_STRUCTURE]);
} #--8<-- sub-implement-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Flat-close -->8--#
# //revision_control
#	version 1.1.90
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"