#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::List-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Definition::List
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::List-open -->8--#
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
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Definition/List./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		'[=project_pkg=]::Structure::',
	#		my $list_class = '::List::Plain',
			my $values_class = '::Flat::Plain');

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

#	my $element = IS_UNDEFINED;
#	if (!$structure->isa('Carrot::Individuality::Controlled::Customized_Settings::Structure'))
#	{
#		$element = $structure;
#		$structure = $list_class->indirect_constructor;
#
#	}
	$this->superseded($structure);

	$this->[ATR_STRUCTURE_SOURCE] = IS_UNDEFINED;
	$this->[ATR_ELEMENT] = IS_UNDEFINED;

#	if (defined($element))
#	{
#		$this->set_element($element);
#	}
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

	#--8<-- if-ANON00085-head -->8--#
	if (defined($this->[ATR_SOURCE]))
	{ #--8<-- if-ANON00085-open -->8--#
		$this->[ATR_ELEMENT]->initialize($this->[ATR_SOURCE]);
		$this->[ATR_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00085-close -->8--#

	#--8<-- if-ANON00086-head -->8--#
	if (defined($this->[ATR_STRUCTURE_SOURCE]))
	{ #--8<-- if-ANON00086-open -->8--#
		$this->[ATR_STRUCTURE]->initialize(
			$this->[ATR_STRUCTURE_SOURCE]);
		$this->[ATR_STRUCTURE_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00086-close -->8--#

	return($this->[ATR_STRUCTURE]);
} #--8<-- sub-implement-close -->8--#

#--8<-- sub-set_element-head -->8--#
sub set_element
# /type method
# /effect ""
# //parameters
#	element
# //returns
{ #--8<-- sub-set_element-open -->8--#
	my ($this, $element) = @ARGUMENTS;

	#--8<-- if-ANON00087-head -->8--#
	if (!$element->isa('Carrot::Individuality::Controlled::Customized_Settings::Structure'))
	{ #--8<-- if-ANON00087-open -->8--#
		$element = $values_class->indirect_constructor($element);
	} #--8<-- if-ANON00087-close -->8--#
	$this->[ATR_STRUCTURE_SOURCE] = $this->[ATR_SOURCE];
	$this->[ATR_SOURCE] = IS_UNDEFINED;

	$this->[ATR_STRUCTURE]->set_element($element);
	$this->[ATR_ELEMENT] = $element;
	return;
} #--8<-- sub-set_element-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::List-close -->8--#
# //revision_control
#	version 1.1.117
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"