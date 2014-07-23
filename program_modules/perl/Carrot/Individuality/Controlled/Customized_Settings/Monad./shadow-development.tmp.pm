#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Monad-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Monad
# /type class
# /attribute_type ::Many_Declared::Ordered
# //parameters
#	inheritance  ::Modularity::Object::Inheritance::ISA_Occupancy
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Monad-open -->8--#
	my ($inheritance) = @ARGUMENTS;

	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Monad./shadow-development.tmp.pm');
	} #END-1406047946
	#require Storable; # doesn't give a list of package names to load

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		'::Individuality::Controlled::',
			my $class_names = '::Class_Names',
			my $distinguished_exceptions = '::Distinguished_Exceptions');

	$class_names->provide(
		my $cursor_class = '::Personality::Reflective::Iterate::Array::Cursor',
		'[=project_pkg=]::',
			my $line_class = '::Dot_Cfg::Line',
			my $source_class = '::Source::Here::Plain',
			my $dot_cdf_class = '::Dot_Cdf');

	$distinguished_exceptions->provide(
		my $unsupported_data_type = 'unsupported_data_type',
		my $hash_element_missing = 'hash_element_missing');

	Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
		my $loader = '::Modularity::Package::Loader');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	my $package_file = $meta_monad->package_file;
	my $dot_directory = $package_file->dot_directory;
	my $default_settings = $dot_directory->entry('default_settings.cdf');
	$default_settings->consider_regular_content;

	my $compiled_settings = $dot_directory->entry('default_settings.pl');
#	my $compiled_settings = $dot_directory->entry('default_settings.bin');
	#--8<-- if-ANON00059-head -->8--#
	if ($default_settings->modification_timestamp_is_newer($compiled_settings))
	{ #--8<-- if-ANON00059-open -->8--#
	# NOTE: manually setting @ARGUMENTS copies but doesn't alias them
		@ARGUMENTS = ($loader, \$this->[ATR_VALUES]);
		require($compiled_settings->value);

#		my $pkg_names = [];
#		$this->[ATR_VALUES] =
#			Storable::retrieve(
#				$compiled_settings->value,
#				$pkg_names);
#		map($loader->load($_), @$pkg_names);

		$this->[ATR_ARE_MODIFIED] = IS_FALSE;
		return;
	} #--8<-- if-ANON00059-close -->8--#
	$this->[ATR_ARE_MODIFIED] = IS_TRUE;

	my $these_values = $this->[ATR_VALUES] = {};

	my $dot_cdf = $dot_cdf_class->indirect_constructor(
		$meta_monad->class_names,
		$default_settings);
##	$this->[ATR_DEFINER] = $dot_cdf;
	$dot_cdf->definition($these_values);

	my $independent = IS_TRUE;
	my $occupied = $inheritance->collect_occupied(
		$meta_monad->parent_classes->perl_isa);
	#--8<-- foreach-ANON00060-head -->8--#
	foreach my $that (reverse(@$occupied))
	{ #--8<-- foreach-ANON00060-open -->8--#
		my $those_values = $that->[ATR_VALUES];
#FIXME: the behaviour should be documented - different from ->inherit
		#--8<-- foreach-ANON00061-head -->8--#
		foreach my $key (keys($those_values))
		{ #--8<-- foreach-ANON00061-open -->8--#
			$independent = IS_FALSE;
			next if (exists($these_values->{$key}));
			$these_values->{$key} =
				$those_values->{$key}->clone_constructor;
		} #--8<-- foreach-ANON00061-close -->8--#
	} #--8<-- foreach-ANON00060-close -->8--#

	#--8<-- if-ANON00062-head -->8--#
	if ($independent) # just because it could be newer?
	{ #--8<-- if-ANON00062-open -->8--#
		require Data::Dumper;
		my $dumper = Data::Dumper->new([$these_values]);
		$dumper->Indent(1);

		my $dumped = $dumper->Dump; #($these_values);
		my $pkg_names = [$dumped =~ m{(?:\n +\]|\)\}), '([^\n\']+)' \),?\n}sg];
		@$pkg_names = keys({map(($_ => 1), @$pkg_names)});

		my $perl_code =
#			"use strict;\n"
#			. "use warnings;\n"
			join("\n", map("\$_[0]->load('$_');", @$pkg_names))
			. "\n\${\$_[1]} = my "
			. $dumped
			. "\nreturn(1);";
		$compiled_settings->consider_regular_content;
		$compiled_settings->overwrite_from($perl_code);

#		Storable::store($these_values, $compiled_settings->value);
	} #--8<-- if-ANON00062-close -->8--#
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-are_modified-head -->8--#
sub are_modified
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-are_modified-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_ARE_MODIFIED]);
} #--8<-- sub-are_modified-close -->8--#

#--8<-- sub-clone_constructor-head -->8--#
sub clone_constructor
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-clone_constructor-open -->8--#
	my ($this) = @ARGUMENTS;

	my $cloned_values = {};
	keys($this->[ATR_VALUES]); # reset 'each' iterator
	#--8<-- while-ANON00063-head -->8--#
	while (my ($key, $value) = each($this->[ATR_VALUES]))
	{ #--8<-- while-ANON00063-open -->8--#
		$cloned_values->{$key} = $value->clone_constructor;
	} #--8<-- while-ANON00063-close -->8--#
	my $clone = [
#		$this->[ATR_DEFINER],
		$cloned_values]	;
	bless($clone, $this->class_name);
	$clone->lock_attribute_structure;

	return($clone);
} #--8<-- sub-clone_constructor-close -->8--#

#FIXME: this ended up as a convenience method
#--8<-- sub-further_customized-head -->8--#
sub further_customized
# /type method
# /effect ""
# //parameters
#	raw_settings
# //returns
#	?
{ #--8<-- sub-further_customized-open -->8--#
	my $clone = $_[THIS]->clone_constructor;

	unless (defined($_[SPX_RAW_SETTINGS]))
	{
		return($clone);
	}
	my $type = ref($_[SPX_RAW_SETTINGS]);
	#--8<-- if-ANON00064-head -->8--#
	if ($type eq '')
	{ #--8<-- if-ANON00064-open -->8--#
		$clone->customize_by_scalar($_[SPX_RAW_SETTINGS]);

	} elsif ($type eq 'SCALAR')
	{
		$clone->customize_by_scalar(${$_[SPX_RAW_SETTINGS]});

	} elsif ($type eq 'HASH')
	{
		$clone->customize_by_hashref($_[SPX_RAW_SETTINGS]);

	} else {
		$unsupported_data_type->raise_exception(
			{'type' => $type},
			ERROR_CATEGORY_IMPLEMENTATION);
	} #--8<-- if-ANON00064-close -->8--#

	return($clone);
} #--8<-- sub-further_customized-close -->8--#

#FIXME: this is odd, let's get rid of it
#--8<-- sub-customized_partial-head -->8--#
sub customized_partial
# /type method
# /effect ""
# //parameters
#	re
#	names
#	partial_settings
# //returns
#	?
{ #--8<-- sub-customized_partial-open -->8--#
	my ($this, $re, $names) = @ARGUMENTS;

	my $partial_settings;
	my $type = ref($_[SPX_PARTIAL_SETTINGS]);
	#--8<-- if-ANON00065-head -->8--#
	if ($type eq '')
	{ #--8<-- if-ANON00065-open -->8--#
		$_[SPX_PARTIAL_SETTINGS] =~ s{$re}{}s;
		$partial_settings = $1;

	} elsif ($type eq 'SCALAR')
	{
		${$_[SPX_PARTIAL_SETTINGS]} =~ s{$re}{}s;
		$partial_settings = $1;

	} elsif ($type eq 'HASH')
	{
		$partial_settings = {};
		#--8<-- foreach-ANON00066-head -->8--#
		foreach my $name (@$names)
		{ #--8<-- foreach-ANON00066-open -->8--#
			$partial_settings->{$name} =
				delete($_[SPX_PARTIAL_SETTINGS]{$name});
		} #--8<-- foreach-ANON00066-close -->8--#
	} #--8<-- if-ANON00065-close -->8--#

	return($this->further_customized($partial_settings));
} #--8<-- sub-customized_partial-close -->8--#

#sub provide_values
#{
#	my $this = shift(\@ARGUMENTS);
#
#	map($_ = $_->value, $this->provide(@ARGUMENTS));
#	return;
#}

#--8<-- sub-provide_value-head -->8--#
sub provide_value
# /type method
# /effect ""
# //parameters
#	named_value  +multiple
# //returns
{ #--8<-- sub-provide_value-open -->8--#
	my $this = shift(\@ARGUMENTS);

	my $values = $this->[ATR_VALUES];
	#--8<-- foreach-ANON00067-head -->8--#
	foreach my $named_value (@ARGUMENTS)
	{ #--8<-- foreach-ANON00067-open -->8--#
		unless (exists($values->{$named_value}))
		{
			$hash_element_missing->raise_exception(
				{'key' => $named_value},
				ERROR_CATEGORY_IMPLEMENTATION);
		}
		$named_value = $values->{$named_value};
	} #--8<-- foreach-ANON00067-close -->8--#
	return;
} #--8<-- sub-provide_value-close -->8--#

#--8<-- sub-provide_plain_value-head -->8--#
sub provide_plain_value
# /type method
# /effect ""
# //parameters
#	named_value  +multiple
# //returns
{ #--8<-- sub-provide_plain_value-open -->8--#
	my $this = shift(\@ARGUMENTS);

	$this->provide_value(@ARGUMENTS);
	#--8<-- foreach-ANON00068-head -->8--#
	foreach my $named_value (@ARGUMENTS)
	{ #--8<-- foreach-ANON00068-open -->8--#
		$named_value = $named_value->plain_value;
	} #--8<-- foreach-ANON00068-close -->8--#
	return;
} #--8<-- sub-provide_plain_value-close -->8--#

#--8<-- sub-provide_plain_values-head -->8--#
sub provide_plain_values
# /type method
# /effect ""
# //parameters
#	value_name  +multiple
# //returns
{ #--8<-- sub-provide_plain_values-open -->8--#
	my $this = shift(\@ARGUMENTS);

	$this->provide_value(@ARGUMENTS);
	#--8<-- foreach-ANON00069-head -->8--#
	foreach my $named_value (@ARGUMENTS)
	{ #--8<-- foreach-ANON00069-open -->8--#
		$named_value = $named_value->plain_values;
	} #--8<-- foreach-ANON00069-close -->8--#
	return;
} #--8<-- sub-provide_plain_values-close -->8--#

#--8<-- sub-inherit-head -->8--#
sub inherit
# /type method
# /effect ""
# //parameters
#	that            ::Personality::Abstract::Instance
# //returns
{ #--8<-- sub-inherit-open -->8--#
	my ($this, $that) = @ARGUMENTS;

	unless ($this->is_sibling($that))
	{
		die("'$this' not compatible with '$that' for inheritance.");
	}
	my $these_values = $this->[ATR_VALUES];
	my $those_values = $that->[ATR_VALUES];
	#--8<-- foreach-ANON00070-head -->8--#
	foreach my $key (keys(%$these_values))
	{ #--8<-- foreach-ANON00070-open -->8--#
		$these_values->{$key}->inherit($those_values->{$key});
	} #--8<-- foreach-ANON00070-close -->8--#

	return;
} #--8<-- sub-inherit-close -->8--#

#--8<-- sub-clone_plus_file-head -->8--#
sub clone_plus_file
# /type method
# /effect ""
# //parameters
#	file_name       ::Personality::Valued::File::Name
# //returns
#	?
{ #--8<-- sub-clone_plus_file-open -->8--#
	my $clone = $_[THIS]->clone_constructor;
	$clone->customize_by_file($_[SPX_FILE_NAME]);
	return($clone);
} #--8<-- sub-clone_plus_file-close -->8--#

#--8<-- sub-customize_by_file-head -->8--#
sub customize_by_file
# /type method
# /effect ""
# //parameters
#	file_name       ::Personality::Valued::File::Name
# //returns
{ #--8<-- sub-customize_by_file-open -->8--#
	my ($this, $file_name) = @ARGUMENTS;
#	return unless (defined($file_name));

	$_[SPX_FILE_NAME]->read_into(my $buffer);
	$_[THIS]->customize_by_scalar($buffer);
	return;
} #--8<-- sub-customize_by_file-close -->8--#

#--8<-- sub-clone_plus_scalarref-head -->8--#
sub clone_plus_scalarref
# /type method
# /effect ""
# //parameters
#	buffer
# //returns
#	?
{ #--8<-- sub-clone_plus_scalarref-open -->8--#
	my $clone = $_[THIS]->clone_constructor;
	$clone->customize_by_scalar(${$_[SPX_BUFFER]});
	return($clone);
} #--8<-- sub-clone_plus_scalarref-close -->8--#

#--8<-- sub-customize_by_scalar-head -->8--#
sub customize_by_scalar
# /type method
# /effect ""
# //parameters
#	buffer
# //returns
{ #--8<-- sub-customize_by_scalar-open -->8--#
	my () = @ARGUMENTS;
	$_[SPX_BUFFER] =~ s{\s+$}{}s;
	my $lines = [split(
		qr{(?:\012|\015\012?)},
		$_[SPX_BUFFER],
		PKY_SPLIT_IGNORE_EMPTY_TRAIL)];
	$_[THIS]->customize_by_arrayref($lines);
	return;
} #--8<-- sub-customize_by_scalar-close -->8--#

#--8<-- sub-clone_plus_arrayref-head -->8--#
sub clone_plus_arrayref
# /type method
# /effect ""
# //parameters
#	buffer
# //returns
#	?
{ #--8<-- sub-clone_plus_arrayref-open -->8--#
	my $clone = $_[THIS]->clone_constructor;
	$clone->customize_by_arrayref($_[SPX_BUFFER]);
	return($clone);
} #--8<-- sub-clone_plus_arrayref-close -->8--#

#--8<-- sub-customize_by_arrayref-head -->8--#
sub customize_by_arrayref
# /type method
# /effect ""
# //parameters
#	lines
# //returns
{ #--8<-- sub-customize_by_arrayref-open -->8--#
	my ($this, $lines) = @ARGUMENTS;

	my $line = $line_class->indirect_constructor;
	my $cursor = $cursor_class->indirect_constructor($lines, $line);

	my $count = 0;
	my ($setting, $source);
	my $anchor1 = 'Carrot::Individuality::Controlled::Customized_Settings';
	#--8<-- while-ANON00071-head -->8--#
	while ($cursor->advance)
	{ #--8<-- while-ANON00071-open -->8--#
		#--8<-- if-ANON00072-head -->8--#
		if ($line->is_comment_or_empty)
		{ #--8<-- if-ANON00072-open -->8--#
			next;

		} elsif (my ($text) = $line->is_name)
		{
			#--8<-- if-ANON00073-head -->8--#
			if (defined($setting))
			{ #--8<-- if-ANON00073-open -->8--#
				$setting->modify($source);
			} #--8<-- if-ANON00073-close -->8--#
			$source = IS_UNDEFINED;

			unless (exists($this->[ATR_VALUES]{$text}))
			{
				$hash_element_missing->raise_exception(
					{+HKY_DEX_BACKTRACK => $count,
					 'key' => $text},
					ERROR_CATEGORY_IMPLEMENTATION);
			}
			$setting = $this->[ATR_VALUES]{$text};

		} elsif (($text) = $line->is_source_class)
		{
#FIXME: at least consistently broken
			$text = "$anchor1$text";
			$source = $class_names->indirect_instance_from_text(
				$text);

		} elsif (($text) = $line->is_data)
		{
			next unless (length($text));
			unless (defined($source))
			{
				$source = $source_class->indirect_constructor;
			}
			$source->append_element($text);

		} elsif (($text) = $line->is_quoted_data)
		{
			unless (defined($source))
			{
				$source = $source_class->indirect_constructor;
			}
			$source->append_element($text);

		} elsif ($line->is_separator)
		{
			next;

		} else {
			die("Format of line '$line' not recognized."); #FIXME
		} #--8<-- if-ANON00072-close -->8--#
	} #--8<-- while-ANON00071-close -->8--#
	#--8<-- if-ANON00074-head -->8--#
	if (defined($setting))
	{ #--8<-- if-ANON00074-open -->8--#
		$setting->modify($source);
	} #--8<-- if-ANON00074-close -->8--#

	return;
} #--8<-- sub-customize_by_arrayref-close -->8--#

#--8<-- sub-clone_plus_hashref-head -->8--#
sub clone_plus_hashref
# /type method
# /effect ""
# //parameters
#	buffer
# //returns
#	?
{ #--8<-- sub-clone_plus_hashref-open -->8--#
	my $clone = $_[THIS]->clone_constructor;
	$clone->customize_by_hashref($_[SPX_BUFFER]);
	return($clone);
} #--8<-- sub-clone_plus_hashref-close -->8--#

#--8<-- sub-customize_by_hashref-head -->8--#
sub customize_by_hashref
# /type method
# /effect ""
# //parameters
#	settings
# //returns
{ #--8<-- sub-customize_by_hashref-open -->8--#
	my ($this, $settings) = @ARGUMENTS;

	return unless (defined($settings));
	#--8<-- foreach-ANON00075-head -->8--#
	foreach my $key (keys(%$settings))
	{ #--8<-- foreach-ANON00075-open -->8--#
		unless (exists($this->[ATR_VALUES]{$key}))
		{
			$hash_element_missing->raise_exception(
				{'key' => $key},
				ERROR_CATEGORY_IMPLEMENTATION);
		}
		$settings->{$key} =~ s{\h+$}{}s;
		my $lines = [split(
			qr{(?:\012|\015\012?)},
			$settings->{$key},
			PKY_SPLIT_IGNORE_EMPTY_TRAIL)];
		$this->[ATR_VALUES]{$key}->modify($lines);
	} #--8<-- foreach-ANON00075-close -->8--#

	return;
} #--8<-- sub-customize_by_hashref-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Monad-close -->8--#
# //revision_control
#	version 1.1.305
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"