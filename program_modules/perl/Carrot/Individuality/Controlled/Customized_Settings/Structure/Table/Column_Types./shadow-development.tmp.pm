#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Column_Types-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Column_Types
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Column_Types-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Column_Types./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		'::Personality::Elemental::Array::',
			my $array_texts_class = '::Texts',
			my $array_objects_class = '::Objects');

	$expressiveness->package_resolver->provide_instance(
		my $re_library = '::Meta::Greenhouse::RE_Library');

	$expressiveness->provide(
		my $distinguished_exceptions =
			'::Individuality::Controlled::Distinguished_Exceptions');

	$distinguished_exceptions->provide(
		my $invalid_row_format = 'invalid_row_format',
		my $uneven_column_count = 'uneven_column_count',
		my $mismatched_column_name = 'mismatched_column_name',
		my $mismatched_column_class = 'mismatched_column_type',
		my $incomplete_column_definition = 'incomplete_column_definition',
		my $missing_column_definition = 'missing_column_definition');

	$re_library->provide(
		my $re_trim_horizonal_space = 'trim_horizonal_space');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_CLASSES] = $array_objects_class->indirect_constructor;
	$this->[ATR_NAMES] = $array_texts_class->indirect_constructor;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-index-head -->8--#
sub index
# /type method
# /effect ""
# //parameters
#	name
# //returns
{ #--8<-- sub-index-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_NAMES]->index($_[SPX_NAME]));
} #--8<-- sub-index-close -->8--#

#--8<-- sub-set_classes-head -->8--#
sub set_classes
# /type method
# /effect ""
# //parameters
#	classes
# //returns
{ #--8<-- sub-set_classes-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_CLASSES]->append($_[SPX_CLASSES]);
	return;
} #--8<-- sub-set_classes-close -->8--#

#--8<-- sub-class_default-head -->8--#
sub class_default
# /type method
# /effect ""
# //parameters
#	position
# //returns
{ #--8<-- sub-class_default-open -->8--#
	my () = @ARGUMENTS;
	#FIXME: or ->clone_constructor ?
	return($_[THIS][ATR_CLASSES][$_[SPX_POSITION]]->value->value);
} #--8<-- sub-class_default-close -->8--#

#--8<-- sub-process_clone-head -->8--#
sub process_clone
# /type method
# /effect ""
# //parameters
#	position
#	element
# //returns
#	?
{ #--8<-- sub-process_clone-open -->8--#
	my () = @ARGUMENTS;
	#FIXME: or ->clone_constructor ?
	return($_[THIS][ATR_CLASSES][$_[SPX_POSITION]]
		->process_clone($_[SPX_ELEMENT]));
} #--8<-- sub-process_clone-close -->8--#

#--8<-- sub-check-head -->8--#
sub check
# /type method
# /effect ""
# //parameters
#	cursor
#	line
# //returns
{ #--8<-- sub-check-open -->8--#
	my ($this, $cursor, $line) = @ARGUMENTS;

	my $column_names;
	#--8<-- while-ANON00115-head -->8--#
	while ($cursor->advance)
	{ #--8<-- while-ANON00115-open -->8--#
		#--8<-- if-ANON00116-head -->8--#
		if ($line->is_end_head)
		{ #--8<-- if-ANON00116-open -->8--#
			last;

		} elsif ($line->is_start_head)
		{
			next;
		} #--8<-- if-ANON00116-close -->8--#

		my ($type, $elements) = $line->must_be_data;
		unless (defined($type))
		{
			$invalid_row_format->raise_exception(
				{'line' => $column_names,
				 'line_re' => $line},
				ERROR_CATEGORY_SETUP);
		}
		#FIXME: $type must be data
		@$column_names = map(
			#FIXME: obscure
			s{$re_trim_horizonal_space}{}rgo,
			@$elements);
	} #--8<-- while-ANON00115-close -->8--#

	#--8<-- if-ANON00117-head -->8--#
	if ($#$column_names == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00117-open -->8--#
		$missing_column_definition->raise_exception(
			{},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00117-close -->8--#
	#--8<-- if-ANON00118-head -->8--#
	if ($this->[ATR_NAMES]->is_empty)
	{ #--8<-- if-ANON00118-open -->8--#
		$this->[ATR_NAMES]->append($column_names);
		Internals::SvREADONLY(@{$this->[ATR_NAMES]}, 1);
		return;
	} #--8<-- if-ANON00118-close -->8--#
	else {
		$this->must_be_compatible_names($column_names);

	}
	#--8<-- if-ANON00119-head -->8--#
	if ($this->[ATR_CLASSES]->is_equal_value($column_names))
	{ #--8<-- if-ANON00119-open -->8--#
		$incomplete_column_definition->raise_exception(
			{'column_count' => $#$column_names,
			 'types_count' => $#{$this->[ATR_CLASSES]}},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00119-close -->8--#

	return($column_names);
} #--8<-- sub-check-close -->8--#

#--8<-- sub-must_be_compatible_names-head -->8--#
sub must_be_compatible_names
# /type method
# /effect ""
# //parameters
#	names
# //returns
{ #--8<-- sub-must_be_compatible_names-open -->8--#
	my ($this, $names) = @ARGUMENTS;

	my $difference = $this->[ATR_NAMES]->first_difference($names);

	return unless (defined($difference));
	my ($position, $name1, $name2) = @$difference;

	#--8<-- if-ANON00120-head -->8--#
	if ($position == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00120-open -->8--#
		$uneven_column_count->raise_exception(
			{'count_this' => $#{$this->[ATR_NAMES]},
			 'count_that' => $#$names},
			ERROR_CATEGORY_SETUP);
	} else {
		$mismatched_column_name->raise_exception(
			{'name_this' => $name1,
			 'name_that' => $name2},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00120-close -->8--#

	return;
} #--8<-- sub-must_be_compatible_names-close -->8--#

#--8<-- sub-must_be_compatible_classes-head -->8--#
sub must_be_compatible_classes
# /type method
# /effect ""
# //parameters
#	classes
# //returns
{ #--8<-- sub-must_be_compatible_classes-open -->8--#
	my ($this, $classes) = @ARGUMENTS;

	my ($position, $class1, $class2) =
		$this->[ATR_CLASSES]->first_difference($classes);

	#--8<-- if-ANON00121-head -->8--#
	if (defined($position))
	{ #--8<-- if-ANON00121-open -->8--#
		#--8<-- if-ANON00122-head -->8--#
		if ($position == ADX_NO_ELEMENTS)
		{ #--8<-- if-ANON00122-open -->8--#
			$uneven_column_count->raise_exception(
				{'count_this' => $#{$this->[ATR_CLASSES]},
				 'count_that' => $#$classes},
				ERROR_CATEGORY_SETUP);
		} else {
			$mismatched_column_class->raise_exception(
				{'name' => $this->[ATR_NAMES][$position],
				 'class_this' => Scalar::Util::blessed($class1),
				 'class_that' => Scalar::Util::blessed($class2)},
				ERROR_CATEGORY_SETUP);
		} #--8<-- if-ANON00122-close -->8--#
	} #--8<-- if-ANON00121-close -->8--#

	return;
} #--8<-- sub-must_be_compatible_classes-close -->8--#

#--8<-- sub-must_be_compatible-head -->8--#
sub must_be_compatible
# /type method
# /effect ""
# //parameters
#	that            ::Personality::Abstract::Instance
# //returns
{ #--8<-- sub-must_be_compatible-open -->8--#
	my ($this, $that) = @ARGUMENTS;

	$this->must_be_compatible_names($that->[ATR_NAMES]);
	$this->must_be_compatible_classes($that->[ATR_CLASSES]);

	return;
} #--8<-- sub-must_be_compatible-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Column_Types-close -->8--#
# //revision_control
#	version 1.1.146
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"