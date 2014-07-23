#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Flat::Plain-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Flat::Plain
# /type class
# /attribute_type ::Many_Declared::Ordered
# //parent_classes
#	::Individuality::Controlled::Customized_Settings::Structure
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Flat::Plain-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Customized_Settings::Structure
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Flat/Plain./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $distinguished_exceptions = '::Individuality::Controlled::Distinguished_Exceptions');

#	$distinguished_exceptions->provide(
#		my $invalid_value = 'invalid_value');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	value
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $value) = @ARGUMENTS;

	$this->[ATR_VALUE] = $value;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-value-head -->8--#
sub value
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-value-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_VALUE]);
} #--8<-- sub-value-close -->8--#

#--8<-- sub-plain_value-head -->8--#
sub plain_value
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-plain_value-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_VALUE]->value);
} #--8<-- sub-plain_value-close -->8--#

#--8<-- sub-process-head -->8--#
sub process
# /type method
# /effect ""
# //parameters
#	source
# //returns
{ #--8<-- sub-process-open -->8--#
	my ($this, $source) = @ARGUMENTS;

	my $raw_data = $source->as_text;
	my $value = $this->[ATR_VALUE];
	unless ($value->is_valid_input_value($raw_data))
	{
		die("FIXME: invalid data '$raw_data'\n");
#		$invalid_value->raise_exception(
#			{'class' => $value->class_name,
#			 'value' => $raw_data},
#			ERROR_CATEGORY_SETUP);
	}
	$value->assign_value($raw_data);

	return;
} #--8<-- sub-process-close -->8--#

#--8<-- sub-process_clone-head -->8--#
sub process_clone
# /type method
# /effect ""
# //parameters
#	raw_data
# //returns
#	?
{ #--8<-- sub-process_clone-open -->8--#
	my ($this, $raw_data) = @ARGUMENTS;

	my $value = $this->[ATR_VALUE];
	#--8<-- if-ANON00084-head -->8--#
	if (ref($raw_data) eq 'ARRAY')
	{ #--8<-- if-ANON00084-open -->8--#
		$raw_data = join('', @$raw_data);
	} #--8<-- if-ANON00084-close -->8--#
	unless ($value->is_valid_input_value($raw_data))
	{
		die('FIXME: this message is missing');
#		$invalid_value->raise_exception(
#			{'class' => $value->class_name,
#			 'value' => $raw_data},
#			ERROR_CATEGORY_SETUP);
	}
	my $clone = $value->clone_constructor;
	$clone->assign_value($raw_data);

	return($clone);
} #--8<-- sub-process_clone-close -->8--#

#--8<-- sub-initialize-head -->8--#
sub initialize
# /type method
# /effect ""
# //parameters
#	source
# //returns
#	?
{ #--8<-- sub-initialize-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS]->process($_[SPX_SOURCE]));
} #--8<-- sub-initialize-close -->8--#

#--8<-- sub-modify-head -->8--#
sub modify
# /type method
# /effect ""
# //parameters
#	source
# //returns
#	?
{ #--8<-- sub-modify-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS]->process($_[SPX_SOURCE]));
} #--8<-- sub-modify-close -->8--#

#--8<-- sub-inherit-head -->8--#
sub inherit
# /type method
# /effect ""
# //parameters
#	raw_data
# //returns
{ #--8<-- sub-inherit-open -->8--#
	my () = @ARGUMENTS;
	die; #FIXME: usage counter ;)
	$_[THIS][ATR_VALUE]->inherit($_[THAT][ATR_VALUE]);
	return;
} #--8<-- sub-inherit-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Flat::Plain-close -->8--#
# //revision_control
#	version 1.1.101
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"