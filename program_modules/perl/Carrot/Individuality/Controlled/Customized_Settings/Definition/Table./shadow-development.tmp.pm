#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Table-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Definition::Table
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Table-open -->8--#
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
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Definition/Table./shadow-development.tmp.pm');
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

	$this->superseded($structure);

	$this->[ATR_STRUCTURE_SOURCE] = IS_UNDEFINED;
	$this->[ATR_COLUMNS] = [];

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

	#--8<-- if-ANON00088-head -->8--#
	if (defined($this->[ATR_SOURCE]))
	{ #--8<-- if-ANON00088-open -->8--#
		$this->[ATR_COLUMNS][ADX_LAST_ELEMENT]
			->initialize($this->[ATR_SOURCE]);
		$this->[ATR_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00088-close -->8--#
	$this->[ATR_STRUCTURE]->set_columns($this->[ATR_COLUMNS]);

	#--8<-- if-ANON00089-head -->8--#
	if (defined($this->[ATR_STRUCTURE_SOURCE]))
	{ #--8<-- if-ANON00089-open -->8--#
		$this->[ATR_STRUCTURE]->initialize(
			$this->[ATR_STRUCTURE_SOURCE]);
		$this->[ATR_STRUCTURE_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00089-close -->8--#

	return($this->[ATR_STRUCTURE]);
} #--8<-- sub-implement-close -->8--#

#--8<-- sub-add_column-head -->8--#
sub add_column
# /type method
# /effect ""
# //parameters
#	column
# //returns
#	?
{ #--8<-- sub-add_column-open -->8--#
	my ($this, $column) = @ARGUMENTS;

	#--8<-- if-ANON00090-head -->8--#
	if ($column->can('is_valid_input_value'))
	{ #--8<-- if-ANON00090-open -->8--#
		$column = $values_class->indirect_constructor($column);
	} #--8<-- if-ANON00090-close -->8--#

	#--8<-- if-ANON00091-head -->8--#
	if ($#{$this->[ATR_COLUMNS]} == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00091-open -->8--#
		$this->[ATR_STRUCTURE_SOURCE] = $this->[ATR_SOURCE];
		$this->[ATR_SOURCE] = IS_UNDEFINED;

	} elsif (defined($this->[ATR_SOURCE]))
	{
		$this->[ATR_COLUMNS][ADX_LAST_ELEMENT]
			->initialize($this->[ATR_SOURCE]);
		$this->[ATR_SOURCE] = IS_UNDEFINED;
	} #--8<-- if-ANON00091-close -->8--#

	push($this->[ATR_COLUMNS], $column);
	return($column);
} #--8<-- sub-add_column-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Definition::Table-close -->8--#
# //revision_control
#	version 1.1.97
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"