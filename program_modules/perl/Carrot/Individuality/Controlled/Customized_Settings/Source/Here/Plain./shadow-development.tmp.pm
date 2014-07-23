#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Source::Here::Plain-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Source::Here::Plain
# /type class
# /attribute_type ::Many_Declared::Ordered
# //parent_classes
#	::Personality::Reflective::Iterate::Array::Forward
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Source::Here::Plain-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Reflective::Iterate::Array::Forward
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Source/Here/Plain./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	lines
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS]->superseded($_[SPX_LINES] // []);
#	$_[THIS][ATR_ELEMENTS]

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-append_element-head -->8--#
sub append_element
# /type method
# /effect ""
# //parameters
#	element
# //returns
{ #--8<-- sub-append_element-open -->8--#
	my () = @ARGUMENTS;
	push($_[THIS][ATR_ELEMENTS], $_[SPX_ELEMENT]);
	return;
} #--8<-- sub-append_element-close -->8--#

#--8<-- sub-as_text-head -->8--#
sub as_text
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-as_text-open -->8--#
	my () = @ARGUMENTS;
	return(join(TXT_LINE_BREAK, @{$_[THIS][ATR_ELEMENTS]}));
} #--8<-- sub-as_text-close -->8--#

#--8<-- sub-as_text_ref-head -->8--#
sub as_text_ref
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-as_text_ref-open -->8--#
	my () = @ARGUMENTS;
	my $buffer = join(TXT_LINE_BREAK, @{$_[THIS][ATR_ELEMENTS]});
	return(\$buffer);
} #--8<-- sub-as_text_ref-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Source::Here::Plain-close -->8--#
# //revision_control
#	version 1.1.79
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"