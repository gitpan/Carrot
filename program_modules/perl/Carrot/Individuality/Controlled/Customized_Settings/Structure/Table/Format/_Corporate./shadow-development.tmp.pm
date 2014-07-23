#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::_Corporate-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# //parent_classes
#	[=project_pkg=]
#	[=project_pkg=]::Table::Constants
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Structure
	Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Format/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946
	use bytes;

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide_instance(
		my $re_english = '::Diversity::English::Regular_Expression');
	$expressiveness->package_resolver->provide(
		my $columns_class = '[=project_pkg=]::Table::Column_Types',
		'::Personality::',
			my $cursor_class = '::Reflective::Iterate::Array::Cursor',
			my $file_name_class = '::Valued::File::Name::Type::Regular::Content::UTF8_wBOM');

	# $expressiveness->provide(
	# 	my $distinguished_exceptions =
	# 		'::Individuality::Controlled::Distinguished_Exceptions');
	#
	# $distinguished_exceptions->provide(
	# 	my $table_already_initialized = 'table_already_initialized');

	my $first_char_re = $re_english->compile(
		'ON_START ( ANY_CHARACTER )',
			[RE_MOD_SAFER_UNICODE,  RE_MOD_SINGLE_LINE]);

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_ROWS] = [];
	$this->[ATR_COLUMNS] = $columns_class->indirect_constructor;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-_clone_constructor-head -->8--#
sub _clone_constructor
# /type method
# /effect ""
# //parameters
#	original
# //returns
{ #--8<-- sub-_clone_constructor-open -->8--#
	my ($this, $original) = @ARGUMENTS;

	$this->[ATR_ROWS] = $original->data_copy_for_clone;

	return;
} #--8<-- sub-_clone_constructor-close -->8--#

#--8<-- sub-drop_rows-head -->8--#
sub drop_rows
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-drop_rows-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_ROWS] = [];
	return;
} #--8<-- sub-drop_rows-close -->8--#

#--8<-- sub-rows-head -->8--#
sub rows
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Raw::Array
{ #--8<-- sub-rows-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_ROWS]);
} #--8<-- sub-rows-close -->8--#

#--8<-- sub-plain_value-head -->8--#
sub plain_value
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Raw::Array
{ #--8<-- sub-plain_value-open -->8--#
	my () = @ARGUMENTS;
	return([map([map($_->value, @$_)], @{$_[THIS][ATR_ROWS]})]);
} #--8<-- sub-plain_value-close -->8--#

# sub values
# # /type method
# # /effect ""
# # //parameters
# # //returns
# #	?
# {
# 	return($_[THIS][ATR_ROWS]);
# }

#--8<-- sub-set_columns-head -->8--#
sub set_columns
# /type method
# /effect ""
# //parameters
#	column_classes
# //returns
{ #--8<-- sub-set_columns-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_COLUMNS]->set_classes($_[SPX_COLUMN_CLASSES]);
	return;
} #--8<-- sub-set_columns-close -->8--#

#--8<-- sub-store_row-head -->8--#
sub store_row
# /type method
# /effect ""
# //parameters
#	row
# //returns
{ #--8<-- sub-store_row-open -->8--#
	my () = @ARGUMENTS;
	push($_[THIS][ATR_ROWS], $_[SPX_ROW]);
	return;
} #--8<-- sub-store_row-close -->8--#

#--8<-- sub-resolve_symbolic_element-head -->8--#
sub resolve_symbolic_element
# /type method
# /effect ""
# //parameters
#	position
#	flag
#	element
# //returns
{ #--8<-- sub-resolve_symbolic_element-open -->8--#
	my ($this, $position, $flag, $element) = @ARGUMENTS;

	#--8<-- if-ANON00109-head -->8--#
	if ($flag eq '#')
	{ #--8<-- if-ANON00109-open -->8--#
		$element = $this->[ATR_COLUMNS]->class_default($position);

	} elsif ($flag eq '?')
	{
		$element = undef;

	} elsif ($flag eq '<')
	{
		my $file_name = $file_name_class
			->indirect_constructor($element);
		$file_name->read_into($element);

	} elsif ($flag eq '*') # wildcard
	{
		$element = \(my $wildcard = '*');

	} else {
		return(IS_FALSE);
	} #--8<-- if-ANON00109-close -->8--#

	$_[SPX_ELEMENT] = $element;
	return(IS_TRUE);
} #--8<-- sub-resolve_symbolic_element-close -->8--#

#--8<-- sub-row_action-head -->8--#
sub row_action
# /type method
# /effect ""
# //parameters
#	context
#	row
# //returns
{ #--8<-- sub-row_action-open -->8--#
	my ($this, $context, $row) = @ARGUMENTS;

#	require Data::Dumper;
#	print STDERR Data::Dumper::Dumper($row);

	$this->unquote_row($row);
	#--8<-- if-ANON00110-head -->8--#
	if ($context eq RKY_LINE_TABLE_DATA)
	{ #--8<-- if-ANON00110-open -->8--#
		$this->add_row($row);

	} elsif ($context eq RKY_LINE_TABLE_DELETE)
	{
		$this->delete_row($row);

	} elsif ($context eq RKY_LINE_TABLE_DEFAULTS)
	{
		$this->set_defaults($row);

	} #--8<-- if-ANON00110-close -->8--#
	return;
} #--8<-- sub-row_action-close -->8--#

#--8<-- sub-unquote_multiline_element-head -->8--#
sub unquote_multiline_element
# /type method
# /effect ""
# //parameters
#	element
#	position
# //returns
{ #--8<-- sub-unquote_multiline_element-open -->8--#
	my ($this, $element, $position) = @ARGUMENTS;

	my $candidate = $element->[ADX_FIRST_ELEMENT];
	$candidate =~ s{$first_char_re}{}o;
	my $first_char = $1;

	#--8<-- if-ANON00111-head -->8--#
	if ($this->resolve_symbolic_element($position, $first_char, $candidate))
	{ #--8<-- if-ANON00111-open -->8--#
		return($candidate);
	} #--8<-- if-ANON00111-close -->8--#

	# double quotes include empty lines
	#--8<-- if-ANON00112-head -->8--#
	if ($first_char eq q{"})
	{ #--8<-- if-ANON00112-open -->8--#
		my $rv = join('',
			map(s{\h+\z}{}r,
				map(s{^.}{}r, @$element)));
		$rv =~ s{"\h*\z}{};
		return($rv);
	} #--8<-- if-ANON00112-close -->8--#

	#--8<-- foreach-ANON00113-head -->8--#
	foreach my $line (@$element)
	{ #--8<-- foreach-ANON00113-open -->8--#
		$line =~ s{$first_char_re}{}o;
		my $first_char = $1;
		$line =~ s{\h+\z}{};

		#--8<-- if-ANON00114-head -->8--#
		if ($first_char eq ' ')
		{ #--8<-- if-ANON00114-open -->8--#
			# exclude empty lines
			unless (length($line))
			{
				$line = IS_UNDEFINED;
			}

		} elsif ($first_char eq q{'})
		{
			# include on individual basis
			$line =~ s{'\z}{}s;

		} else {
			die("FIXME: unknown format '$line'.");
		} #--8<-- if-ANON00114-close -->8--#
	} #--8<-- foreach-ANON00113-close -->8--#
	return(join('', grep(defined($_), @$element)));
} #--8<-- sub-unquote_multiline_element-close -->8--#

# sub detabify
# # /type method
# # /effect ""
# # //parameters
# #	<lines>
# # //returns
# {
# 	my ($this, $lines) = @ARGUMENTS;
#
# 	foreach my $line (@$lines)
# 	{
# 		next if (index($line, "\t") == ADX_NO_ELEMENTS);
# 		$line =~ s{(\t)(\t+)}{$1.('        ' x length($2))}sge;
# 		while ($line =~ s{^(.*)\t}{$1.' ' x (8-length($1)%8)}sge) {};
# 	}
#
# 	return;
# }

#--8<-- sub-initialize-head -->8--#
sub initialize
# /type method
# /effect ""
# /alias_name modify
# //parameters
#	source
# //returns
{ #--8<-- sub-initialize-open -->8--#
	my ($this, $source) = @ARGUMENTS;

#	$this->detabify($lines);
	my $line = $this->table_line_constructor($source->first_element);
	$source->re_constructor($cursor_class->value, $line);

	$this->[ATR_COLUMNS]->check($source, $line);
	$this->parse_lines($source, $line);

	return;
} #--8<-- sub-initialize-close -->8--#
*modify = \&initialize;
#*modify = \&initialize;

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::_Corporate-close -->8--#
# //revision_control
#	version 1.1.399
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"