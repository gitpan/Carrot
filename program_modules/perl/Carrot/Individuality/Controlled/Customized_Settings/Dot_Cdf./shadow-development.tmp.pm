#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Dot_Cdf./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $class_names = '::Individuality::Controlled::Class_Names');

	$class_names->provide_instance(
		my $translated_errors = '::Meta::Greenhouse::Translated_Errors');

	$class_names->provide(
		'::Personality::',
			my $eval_error_class = '::Valued::Perl5::Eval_Error',
			my $cursor_class = '::Reflective::Iterate::Array::Cursor',

		my $line_class = '[=this_pkg=]::Line',
		my $source_class = '[=project_pkg=]::Source::Here::Plain',

		'[=project_pkg=]::Definition::',
			my $flat_definition_class = '::Flat',
			my $list_definition_class = '::List',
			my $table_definition_class = '::Table');

	#my $dot_cdf_magic = q{=customized_settings;standard;v1};

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	class_names
#	file_name       ::Personality::Valued::File::Name
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $class_names, $file_name) = @ARGUMENTS;

	$this->[ATR_CLASS_NAMES] = $class_names;
	$this->[ATR_FILE_NAME] = $file_name;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-definition-head -->8--#
sub definition
# /type method
# /effect ""
# //parameters
#	values
# //returns
#	?
{ #--8<-- sub-definition-open -->8--#
	my ($this, $values) = @ARGUMENTS;

	eval {
		$this->parse($values);
		Internals::hv_clear_placeholders(%$values);
		Internals::SvREADONLY(%$values, 1);
		return(IS_TRUE);
	} or do {
		my $eval_error = $eval_error_class
			->indirect_constructor($EVAL_ERROR);
#FIXME: looks weird
		$translated_errors->escalate(
			'failed_definition',
			[$eval_error],
			$EVAL_ERROR);
	};

	return($values);
} #--8<-- sub-definition-close -->8--#

#--8<-- sub-parse-head -->8--#
sub parse
# /type method
# /effect ""
# //parameters
#	values
# //returns
{ #--8<-- sub-parse-open -->8--#
	my ($this, $values) = @ARGUMENTS;

	$this->[ATR_FILE_NAME]->read_into(my $buffer);
	$this->parse_buffer($values, \$buffer);

	return;
} #--8<-- sub-parse-close -->8--#

#--8<-- sub-parse_buffer-head -->8--#
sub parse_buffer
# /type method
# /effect ""
# //parameters
#	values
#	buffer
# //returns
{ #--8<-- sub-parse_buffer-open -->8--#
	my ($this, $values, $buffer) = @ARGUMENTS;

	my $line = $line_class->indirect_constructor;
	my $cursor = $cursor_class->indirect_constructor(
		[split(qr{(?:\012|\015\012?)}, $$buffer, PKY_SPLIT_IGNORE_EMPTY_TRAIL)],
		$line);

	my $anchor1 = '::Individuality::Controlled::Customized_Settings';
	my $anchor2 = '::Personality';
	my ($name, $definition, $source);
	my ($keyword, $text);
	#--8<-- while-ANON00076-head -->8--#
	while ($cursor->advance)
	{ #--8<-- while-ANON00076-open -->8--#
		#--8<-- if-ANON00077-head -->8--#
		if ($line->is_comment_or_empty)
		{ #--8<-- if-ANON00077-open -->8--#
			next;

		} elsif (($text) = $line->is_name)
		{
			#--8<-- if-ANON00078-head -->8--#
			if (defined($definition))
			{ #--8<-- if-ANON00078-open -->8--#
				$values->{$name} = $definition->implement;
			} #--8<-- if-ANON00078-close -->8--#
			$definition = IS_UNDEFINED;
			$source = IS_UNDEFINED;
			$name = $text;

		} elsif (($keyword, $text) = $line->is_some_class)
		{
			#--8<-- if-ANON00079-head -->8--#
			if ($text =~ m{^::(Structure|Source)::})
			{ #--8<-- if-ANON00079-open -->8--#
				$text = "$anchor1$text";
			} else {
				$text = "$anchor2$text";
			} #--8<-- if-ANON00079-close -->8--#
			my $candidate = $this->[ATR_CLASS_NAMES]
				->indirect_instance_from_text($text);

			#--8<-- if-ANON00080-head -->8--#
			if ($keyword eq 'source')
			{ #--8<-- if-ANON00080-open -->8--#
				$source = $candidate;
				$definition->start_default($candidate);

			} elsif ($keyword eq 'flat')
			{
				$definition = $flat_definition_class
					->indirect_constructor($candidate);

			} elsif ($keyword eq 'list')
			{
				$definition = $list_definition_class
					->indirect_constructor($candidate);

			} elsif ($keyword eq 'element')
			{
				$definition->set_element($candidate);

			} elsif ($keyword eq 'table')
			{
				$definition = $table_definition_class
					->indirect_constructor($candidate);

			} elsif ($keyword eq 'rows')
			{
				$definition->set_row($candidate);

			} elsif ($keyword eq 'column')
			{
				$definition->add_column($candidate);

			} #--8<-- if-ANON00080-close -->8--#

		} elsif ($line->is_separator)
		{
			next;

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

		} elsif (($text) = $line->is_anchor)
		{
			$anchor1 = $text;
			$anchor2 = $text;

		} else {
#FIXME: outdated
			$translated_errors->advocate(
				'invalid_definition_format',
				[$this->[ATR_FILE_NAME],
				$cursor->current_index,
				$$line]);

		} #--8<-- if-ANON00077-close -->8--#
	} #--8<-- while-ANON00076-close -->8--#

	#--8<-- if-ANON00081-head -->8--#
	if (defined($definition))
	{ #--8<-- if-ANON00081-open -->8--#
		$values->{$name} = $definition->implement;
	} #--8<-- if-ANON00081-close -->8--#
#FIXME: add inheritance of default values if only default is given

	return;
} #--8<-- sub-parse_buffer-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf-close -->8--#
# //revision_control
#	version 1.1.222
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"