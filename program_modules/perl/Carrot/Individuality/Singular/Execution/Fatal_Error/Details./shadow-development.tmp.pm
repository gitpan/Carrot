#--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error::Details-head -->8--#
package Carrot::Individuality::Singular::Execution::Fatal_Error::Details
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error::Details-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';
	require Scalar::Util;

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');

		require overload;
		overload->import(
			'""' => 'overload_stringification');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Singular/Execution/Fatal_Error/Details./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $localized_messages = '::Individuality::Controlled::Localized_Messages');

	$localized_messages->provide_prototype(
		my $caller_info = 'caller_info');

	#use overload
	#	'""' => sub { return($_[THIS]->as_text) };

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	caller
#	msg
#	category
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_CALLER] = $_[SPX_CALLER];
	$this->[ATR_MSG] = $_[SPX_MSG];
	$this->[ATR_CATEGORY] = $_[SPX_CATEGORY];

#FIXME: remove
	die if ($this->[ATR_MSG]->class_name ne 'Carrot::Individuality::Controlled::Distinguished_Exceptions::Potential');

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-get_caller-head -->8--#
sub get_caller
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-get_caller-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_CALLER]);
} #--8<-- sub-get_caller-close -->8--#

#--8<-- sub-get_category-head -->8--#
sub get_category
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-get_category-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_CATEGORY]);
} #--8<-- sub-get_category-close -->8--#

#--8<-- sub-caller_info-head -->8--#
sub caller_info
# /type method
# /effect ""
# //parameters
#	languages
# //returns
#	?
{ #--8<-- sub-caller_info-open -->8--#
	my ($this, $languages) = @ARGUMENTS;

	my $caller = $this->[ATR_CALLER];
	my $text = $caller_info->realize_text(
		{
			'message_name' => $this->[ATR_MSG]->get_name,
			'caller_package' => $caller->[RDX_CALLER_PACKAGE],
			'caller_file' => $caller->[RDX_CALLER_FILE],
			'caller_line' => $caller->[RDX_CALLER_LINE],
			'error_category' => $this->[ATR_CATEGORY]
		},
		undef,
		$languages);

	return($text);
} #--8<-- sub-caller_info-close -->8--#

#--8<-- sub-as_text-head -->8--#
sub as_text
# /type method
# /effect ""
# //parameters
#	languages
# //returns
#	?
{ #--8<-- sub-as_text-open -->8--#
	my ($this, $languages) = @ARGUMENTS;

	my $text = ${$this->caller_info($languages)}
		. TXT_LINE_BREAK
		. $this->[ATR_MSG]->localized_text($languages);
	return($text);
} #--8<-- sub-as_text-close -->8--#

#--8<-- sub-overload_stringification-head -->8--#
sub overload_stringification
# /type method
# /effect "Overloads the double quotes operator."
# //parameters
#	that
#	is_swapped
# //returns
#	::Personality::Abstract::Text
{ #--8<-- sub-overload_stringification-open -->8--#
	my ($this, $that, $is_swapped) = @ARGUMENTS;
#	my ($this, $that, $is_swapped) = @ARGUMENTS;

	return($_[THIS]->as_text);
} #--8<-- sub-overload_stringification-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error::Details-close -->8--#
# //revision_control
#	version 1.1.64
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"