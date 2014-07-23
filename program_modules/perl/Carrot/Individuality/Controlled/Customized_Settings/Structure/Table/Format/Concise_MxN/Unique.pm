package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Unique
# /type class
# //parent_classes
#	[=component_pkg=]::Concise_MxN
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $code_evaluation = '::Individuality::Singular::Execution::Code_Evaluation');

	$expressiveness->distinguished_exceptions->provide(
	#	my $uneven_column_count = 'uneven_column_count',
	#	my $mismatched_column_name = 'mismatched_column_name',
	#	my $mismatched_column_type = 'mismatched_column_type',
	#	my $incomplete_column_definition = 'incomplete_column_definition',
	#	my $invalid_row_format = 'invalid_row_format',
	#	my $invalid_table_start = 'invalid_table_start',
	#	my $missing_column_definition = 'missing_column_definition',
		my $hash_element_missing = 'hash_element_missing');

# =--------------------------------------------------------------------------= #

sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{
	my ($this, $names) = @ARGUMENTS;

	$this->superseded;

	$this->[ATR_UNIQUE_INDEX] = {};
	$this->[ATR_INDEX_COLUMNS] = [split(
		',',
		$names,
		PKY_SPLIT_RETURN_FULL_TRAIL)];
	$this->[ATR_INDEX_KEY_CREATOR] = IS_UNDEFINED;

	return;
}

sub drop_rows
# /type method
# /effect ""
# //parameters
# //returns
{
	$_[THIS]->superseded;
	$_[THIS][ATR_UNIQUE_INDEX] = {};
	return;
}

#FIXME: quick hack
my $key_creator_code = q{sub {
	if ($_[0] == 1)
	{
		return(join(chr(1), %s));
	} else {
		return(join(chr(1), %s));
	}
}};

sub build_column_names
# /type method
# /effect ""
# //parameters
#	lines
#	parser_re
# //returns
#	?
{
	my ($this, $lines, $parser_re) = @ARGUMENTS;

	my $names = $this->superseded($lines, $parser_re);
	die('FIXME. No columns') if ($#$names == ADX_NO_ELEMENTS);

	my $i = ADX_FIRST_ELEMENT;
	my $index = {map(($_ => $i++), @$names)};
	my $index_positions = [];
	foreach my $name (@{$this->[ATR_INDEX_COLUMNS]})
	{
		unless (exists($index->{$name}))
		{
			die("FIXME. Missing name '$name'.");
		}
		push($index_positions, $index->{$name});
	}

	my $key_creator = sprintf($key_creator_code,
		join(', ', map("\$_[1][$_]->value", @$index_positions)),
		join(', ', map("\$_[1][$_]", @ßindex_positions)));
	$code_evaluation->provide_fatally($key_creator);
	$this->[ATR_INDEX_KEY_CREATOR] = $key_creator;

	return($names);
}

sub inherit
# /type method
# /effect ""
# //parameters
#	that            ::Personality::Abstract::Instance
# //returns
{
	my ($this, $that) = @ARGUMENTS;

	$this->enforce_compatible_structure($that);
	foreach my $row (@{$that->[ATR_ROWS]})
	{
		my $key = $this->[ATR_INDEX_KEY_CREATOR]->(1, $row);
		next if (exists($this->[ATR_UNIQUE_INDEX]{$key}));
		$this->store_row($row);
	}
	return;
}

sub store_row
# /type method
# /effect ""
# //parameters
#	row
# //returns
{
	my ($this, $row) = @ARGUMENTS;

	my $rows = $this->[ATR_ROWS];
	my $key = $this->[ATR_INDEX_KEY_CREATOR]->(1, $row);
	if (exists($this->[ATR_UNIQUE_INDEX]{$key}))
	{
		my $position = $this->[ATR_UNIQUE_INDEX]{$key};
		splice($rows, $position, 1);
	}
	push($rows, $row);
	$this->[ATR_UNIQUE_INDEX]{$key} = $#$rows;

	return;
}

sub delete_row
# /type method
# /effect ""
# //parameters
#	row
# //returns
{
	my ($this, $row) = @ARGUMENTS;

	$this->unquote_row_single($row);

	my $key = $this->[ATR_INDEX_KEY_CREATOR]->(0, $row);
	return unless (exists($this->[ATR_UNIQUE_INDEX]{$key}));
	my $position = delete($this->[ATR_UNIQUE_INDEX]{$key});
	splice($this->[ATR_ROWS], $position, 1);

	return;
}

sub provide_value
# /type method
# /effect ""
# //parameters
#	value_name  +multiple
# //returns
{
	my $this = shift(\@ARGUMENTS);

	my $rows = $this->[ATR_ROWS];
	foreach (@ARGUMENTS)
	{
		if (exists($rows->{$_}))
		{
			$_ = $rows->{$_};
		} else {
			$hash_element_missing->raise_exception(
				{'key' => $_},
				ERROR_CATEGORY_SETUP);
		}
	}
	return;
}

sub provide_plain_value
# /type method
# /effect ""
# //parameters
#	value_name  +multiple
# //returns
{
	my $this = shift(\@ARGUMENTS);

	my $rows = $this->[ATR_ROWS];
	foreach (@ARGUMENTS)
	{
		if (exists($rows->{$_}))
		{
			$_ = $rows->{$_}->value;
		} else {
			$hash_element_missing->raise_exception(
				{'key' => $_},
				ERROR_CATEGORY_SETUP);
		}
	}
	return;
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.134
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Tr√ºmper <win@carrot-programming.org>"