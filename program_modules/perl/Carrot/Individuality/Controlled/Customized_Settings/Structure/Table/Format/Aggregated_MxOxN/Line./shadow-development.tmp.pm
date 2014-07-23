#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN::Line-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN::Line
# /type class
# //parent_classes
#	[=component_pkg=]::Concise_MxN::Line
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN::Line-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Format/Aggregated_MxOxN/Line./shadow-development.tmp.pm');
	} #END-1406047946


# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	table_start
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $table_start) = @ARGUMENTS;

	my $lengths = $this->superseded($table_start);

	my $subrow_re =
		'^\|(.{'
		.$lengths->[0]
		.'})\+'
		.join('\+', map(substr(' -' x (int($_/2)+1), 0, $_),
			@$lengths[1..$#$lengths]))
		.'\+$';
	$this->[ATR_NEXT_SUBROW] = qr{$subrow_re};
	$this->[ATR_NEXT_ROW] =
		'+'
		.join('+', map('-'x$_, @$lengths))
		.'+';

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-is_next_subrow-head -->8--#
sub is_next_subrow
# /type method
# /effect ""
# //parameters
#	line
# //returns
#	?
{ #--8<-- sub-is_next_subrow-open -->8--#
	my ($this) = @ARGUMENTS;

	# duplicates ->matched_groups somehow
	my $elements = [$this->[ATR_LINE] =~ m{$this->[ATR_NEXT_SUBROW]}];
	#--8<-- if-ANON00123-head -->8--#
	if (@$elements)
	{ #--8<-- if-ANON00123-open -->8--#
		return($elements->[ADX_FIRST_ELEMENT]);
	} else {
		return(IS_UNDEFINED);
	} #--8<-- if-ANON00123-close -->8--#
} #--8<-- sub-is_next_subrow-close -->8--#

#--8<-- sub-is_next_row-head -->8--#
sub is_next_row
# /type method
# /effect ""
# //parameters
#	line
# //returns
#	?
{ #--8<-- sub-is_next_row-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_LINE] eq $_[THIS][ATR_NEXT_ROW]);
} #--8<-- sub-is_next_row-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN::Line-close -->8--#
# //revision_control
#	version 1.1.109
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"