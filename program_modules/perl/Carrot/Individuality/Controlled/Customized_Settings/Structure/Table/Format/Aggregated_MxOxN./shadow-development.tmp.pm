#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Format/Aggregated_MxOxN./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $line_class = '[=this_pkg=]::Line');

	sub IDX_ROW_M()   { 0 }
	sub IDX_ROW_OXN() { 1 }

# =--------------------------------------------------------------------------= #

#--8<-- sub-table_line_constructor-head -->8--#
sub table_line_constructor
# /type method
# /effect "Fills an newly constructed instance with life."
# //parameters
#	first_line
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-table_line_constructor-open -->8--#
	my () = @ARGUMENTS;
	return($line_class->indirect_constructor($_[SPX_FIRST_LINE]));
} #--8<-- sub-table_line_constructor-close -->8--#

#--8<-- sub-unquote_row-head -->8--#
sub unquote_row
# /type method
# /effect ""
# //parameters
#	row
# //returns
{ #--8<-- sub-unquote_row-open -->8--#
	my ($this, $row) = @ARGUMENTS;

	$row->[ADX_FIRST_ELEMENT] = $this->unquote_multiline_element(
		$row->[ADX_FIRST_ELEMENT], ADX_FIRST_ELEMENT);

	#--8<-- foreach-ANON00093-head -->8--#
	foreach my $subrow (@{$row->[ADX_SECOND_ELEMENT]})
	{ #--8<-- foreach-ANON00093-open -->8--#
		$subrow->[ADX_FIRST_ELEMENT] = undef;
		#--8<-- for-ANON00094-head -->8--#
		for (my $i = ADX_SECOND_ELEMENT; $i <= $#$subrow; $i++)
		{ #--8<-- for-ANON00094-open -->8--#
			$subrow->[$i] = $this->unquote_multiline_element(
				$subrow->[$i], $i);
		} #--8<-- for-ANON00094-close -->8--#
	} #--8<-- foreach-ANON00093-close -->8--#

	return;
} #--8<-- sub-unquote_row-close -->8--#

#--8<-- sub-parse_lines-head -->8--#
sub parse_lines
# /type method
# /effect ""
# //parameters
#	cursor
#	line
# //returns
{ #--8<-- sub-parse_lines-open -->8--#
	my ($this, $cursor, $line) = @ARGUMENTS;

	my $one_xoxn = IS_UNDEFINED;
	my $oxn = IS_UNDEFINED;
	my $context = '';
	my ($type, $elements);
	#--8<-- while-ANON00095-head -->8--#
	while ($cursor->advance)
	{ #--8<-- while-ANON00095-open -->8--#
		#--8<-- if-ANON00096-head -->8--#
		if ($line->is_end_body)
		{ #--8<-- if-ANON00096-open -->8--#
			#--8<-- if-ANON00097-head -->8--#
			if (defined($one_xoxn))
			{ #--8<-- if-ANON00097-open -->8--#
				$this->row_action($context, $one_xoxn);
			} #--8<-- if-ANON00097-close -->8--#
			last;

		} elsif ($line->is_cut)
		{
			$this->drop_rows;
			$one_xoxn = IS_UNDEFINED;
			next;

		} elsif (my $element = $line->is_next_subrow)
		{
			unless (defined($one_xoxn))
			{
				die("Can't start next subrow without an initial subrow.");
			}
			push($one_xoxn->[0], $element);
			$oxn = [map([], @$elements)];
			push($one_xoxn->[1], $oxn);
			next;

		} elsif ($line->is_next_row)
		{
			#--8<-- if-ANON00098-head -->8--#
			if (defined($one_xoxn))
			{ #--8<-- if-ANON00098-open -->8--#
				$this->row_action($context, $one_xoxn);
			} #--8<-- if-ANON00098-close -->8--#
			$one_xoxn = IS_UNDEFINED;
			next;
		} #--8<-- if-ANON00096-close -->8--#

		($type, $elements) = $line->must_be_data;
		#--8<-- if-ANON00099-head -->8--#
		if (defined($one_xoxn))
		{ #--8<-- if-ANON00099-open -->8--#
			unless ($context eq $type)
			{
				die("Context '$context' and start '$type' mismatch");
			}
		} else {
			$context = $type;
			$oxn = [map([], @$elements)];
			$one_xoxn = [[], [$oxn]];
		} #--8<-- if-ANON00099-close -->8--#

		push($one_xoxn->[0], $elements->[0]);
		#--8<-- foreach-ANON00100-head -->8--#
		foreach my $i (1 .. $#$oxn)
		{ #--8<-- foreach-ANON00100-open -->8--#
			push($oxn->[$i], $elements->[$i]);
		} #--8<-- foreach-ANON00100-close -->8--#
	} #--8<-- while-ANON00095-close -->8--#
	return;
} #--8<-- sub-parse_lines-close -->8--#

#--8<-- sub-add_row-head -->8--#
sub add_row
# /type method
# /effect ""
# //parameters
#	row
# //returns
{ #--8<-- sub-add_row-open -->8--#
	my ($this, $row) = @ARGUMENTS;

	my $columns = $this->[ATR_COLUMNS];

	$row->[ADX_FIRST_ELEMENT] = $columns->process_clone(ADX_FIRST_ELEMENT,
		$row->[ADX_FIRST_ELEMENT]);

	#--8<-- foreach-ANON00101-head -->8--#
	foreach my $subrow (@{$row->[ADX_SECOND_ELEMENT]})
	{ #--8<-- foreach-ANON00101-open -->8--#
#		$subrow->[ADX_FIRST_ELEMENT] = $row->[ADX_FIRST_ELEMENT];
		#--8<-- for-ANON00102-head -->8--#
		for (my $i = ADX_SECOND_ELEMENT; $i <= $#$subrow; $i++)
		{ #--8<-- for-ANON00102-open -->8--#
			$subrow->[$i] = $columns->process_clone($i,
				$subrow->[$i]);
		} #--8<-- for-ANON00102-close -->8--#
	} #--8<-- foreach-ANON00101-close -->8--#
	$this->store_row($row);

	return;
} #--8<-- sub-add_row-close -->8--#

#--8<-- sub-delete_row-head -->8--#
sub delete_row
# /type method
# /effect ""
# //parameters
#	row1
# //returns
{ #--8<-- sub-delete_row-open -->8--#
	my ($this, $row1) = @ARGUMENTS;

	my $delete = [];
	unless (defined($row1->[0]))
	{
		die("Can only delete based on the aggregated value.");
	}
	my $i = ADX_NO_ELEMENTS;
	#--8<-- foreach-ANON00103-head -->8--#
	foreach my $row (@{$this->[ATR_ROWS]})
	{ #--8<-- foreach-ANON00103-open -->8--#
		$i++;
		next if ($row->[0] ne $row1->[0]);
		push($delete, $i);
	} #--8<-- foreach-ANON00103-close -->8--#
	#--8<-- foreach-ANON00104-head -->8--#
	foreach my $i (@$delete)
	{ #--8<-- foreach-ANON00104-open -->8--#
		splice($this->[ATR_ROWS], $i, 1);
	} #--8<-- foreach-ANON00104-close -->8--#

	return;
} #--8<-- sub-delete_row-close -->8--#

#--8<-- sub-first_column-head -->8--#
sub first_column
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Raw::Array
{ #--8<-- sub-first_column-open -->8--#
	my () = @ARGUMENTS;
	return([map($_->[ADX_FIRST_ELEMENT], @{$_[THIS][ATR_ROWS]})]);
} #--8<-- sub-first_column-close -->8--#

#--8<-- sub-first_column_plain-head -->8--#
sub first_column_plain
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Raw::Array
{ #--8<-- sub-first_column_plain-open -->8--#
	my () = @ARGUMENTS;
	return([map($_->[ADX_FIRST_ELEMENT]->value, @{$_[THIS][ATR_ROWS]})]);
} #--8<-- sub-first_column_plain-close -->8--#

#--8<-- sub-provide_row-head -->8--#
sub provide_row
# /type method
# /effect ""
# //parameters
#	named_value  +multiple
# //returns
{ #--8<-- sub-provide_row-open -->8--#
	my $this = shift(\@ARGUMENTS);

	#--8<-- foreach-ANON00105-head -->8--#
	foreach my $named_value (@ARGUMENTS)
	{ #--8<-- foreach-ANON00105-open -->8--#
		#--8<-- foreach-ANON00106-head -->8--#
		foreach my $row (@{$this->[ATR_ROWS]})
		{ #--8<-- foreach-ANON00106-open -->8--#
			next if ($row->[IDX_ROW_M]->value ne $named_value);
			$named_value = $row;
			last;
		} #--8<-- foreach-ANON00106-close -->8--#
		#--8<-- if-ANON00107-head -->8--#
		if (ref($named_value) eq '')
		{ #--8<-- if-ANON00107-open -->8--#
			die("No row with aggregated key '$named_value' found.");
		} #--8<-- if-ANON00107-close -->8--#
	} #--8<-- foreach-ANON00105-close -->8--#

	return;
} #--8<-- sub-provide_row-close -->8--#

#--8<-- sub-row_1xN-head -->8--#
sub row_1xN
# /type method
# /effect ""
# //parameters
#	key
#	name
# //returns
#	?
{ #--8<-- sub-row_1xN-open -->8--#
	my ($this, $key, $name) = @ARGUMENTS;

	$this->provide_row($key);
	my $i = $this->[ATR_COLUMNS]->index($name);
	return([map($_->[$i], @{$key->[IDX_ROW_OXN]})]);
} #--8<-- sub-row_1xN-close -->8--#

#--8<-- sub-row_1xN_merged-head -->8--#
sub row_1xN_merged
# /type method
# /effect ""
# //parameters
#	key
#	name
# //returns
#	?
{ #--8<-- sub-row_1xN_merged-open -->8--#
	my ($this, $keys, $name) = @ARGUMENTS;

	my $i = $this->[ATR_COLUMNS]->index($name);
	my $column = [];
	#--8<-- foreach-ANON00108-head -->8--#
	foreach my $key (@$keys)
	{ #--8<-- foreach-ANON00108-open -->8--#
		$this->provide_row($key);
		push($column, map($_->[$i], @{$key->[IDX_ROW_OXN]}))
	} #--8<-- foreach-ANON00108-close -->8--#

	return($column);
} #--8<-- sub-row_1xN_merged-close -->8--#

#--8<-- sub-row_OxN-head -->8--#
sub row_OxN
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-row_OxN-open -->8--#
	my ($this, $key, $name) = @ARGUMENTS;

	$this->provide_row($key);
	return([@{$key->[IDX_ROW_OXN]}]);
} #--8<-- sub-row_OxN-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Aggregated_MxOxN-close -->8--#
# //revision_control
#	version 1.1.330
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"