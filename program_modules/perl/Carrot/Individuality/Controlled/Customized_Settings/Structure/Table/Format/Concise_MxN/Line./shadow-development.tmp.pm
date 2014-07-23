#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line
# /type class
# /attribute_type ::Many_Declared::Ordered
# //parent_classes
#	[=project_pkg=]::Table::Constants
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Format/Concise_MxN/Line./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $distinguished_exceptions =
			'::Individuality::Controlled::Distinguished_Exceptions');

	$distinguished_exceptions->provide(
		my $invalid_row_format = 'invalid_row_format');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	table_start
# //returns
#	::Personality::Abstract::Raw::Number
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $table_start) = @ARGUMENTS;

	unless ($table_start =~ m{^\*.*\*$})
	{

		die("Wrong format of table start: '$table_start'");
	}

	$this->[ATR_LINE] = $table_start;
	my $lengths = [map(length($_), ($table_start =~ m{(-+)}sg))];
	my $table_width = length($table_start);

	$this->[ATR_START_HEAD] = $table_start;
	$this->[ATR_END_HEAD] =
		'+'
		.join('+', map('='x$_, @$lengths))
		.'+';
	$this->[ATR_CUT] =
		'8<'
		.'-'x($table_width-4)
		.'>8';

	my $re =
		'^(\||#|/)'
		.join('\|', map("(.{$_})", @$lengths))
		.'(\||#|/)$';
	$this->[ATR_DATA] = qr{$re};

	return($lengths);
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-assign_value-head -->8--#
sub assign_value
# /type method
# /effect ""
# //parameters
#	value
# //returns
{ #--8<-- sub-assign_value-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_LINE] = $_[SPX_VALUE];
	return;
} #--8<-- sub-assign_value-close -->8--#

#--8<-- sub-must_be_data-head -->8--#
sub must_be_data
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-must_be_data-open -->8--#
	my ($this) = @ARGUMENTS;

	my $elements = [($this->[ATR_LINE] =~ m{$this->[ATR_DATA]})];

	unless (@$elements)
	{
		$invalid_row_format->raise_exception(
			{'line' => $this->[ATR_LINE],
			 'line_re' => "$this->[ATR_DATA]"},
			ERROR_CATEGORY_SETUP);

	}

	my $start = shift($elements);
	my $end = pop($elements);
	unless ($start eq $end)
	{
		die("Start '$start' doesn't match end '$end'.");
	}

	#--8<-- if-ANON00124-head -->8--#
	if ($start eq '|')
	{ #--8<-- if-ANON00124-open -->8--#
		return(RKY_LINE_TABLE_DATA, $elements);

	} elsif ($start eq '/')
	{
		return(RKY_LINE_TABLE_DELETE, $elements);

	} elsif ($start eq '#')
	{
		return(RKY_LINE_TABLE_DEFAULTS, $elements);

	} #--8<-- if-ANON00124-close -->8--#
	return(IS_UNDEFINED, IS_UNDEFINED);
} #--8<-- sub-must_be_data-close -->8--#

#--8<-- sub-is_start_head-head -->8--#
sub is_start_head
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-is_start_head-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_LINE] eq $_[THIS][ATR_START_HEAD]);
} #--8<-- sub-is_start_head-close -->8--#

#--8<-- sub-is_end_head-head -->8--#
sub is_end_head
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-is_end_head-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_LINE] eq $_[THIS][ATR_END_HEAD]);
} #--8<-- sub-is_end_head-close -->8--#

#--8<-- sub-is_end_body-head -->8--#
sub is_end_body
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-is_end_body-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_LINE] eq $_[THIS][ATR_START_HEAD]);
} #--8<-- sub-is_end_body-close -->8--#

#--8<-- sub-is_cut-head -->8--#
sub is_cut
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_cut-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_LINE] eq $_[THIS][ATR_CUT]);
} #--8<-- sub-is_cut-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line-close -->8--#
# //revision_control
#	version 1.1.130
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"