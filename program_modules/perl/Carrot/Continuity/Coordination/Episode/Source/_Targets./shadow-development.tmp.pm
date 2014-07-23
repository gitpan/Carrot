#--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Targets-head -->8--#
package Carrot::Continuity::Coordination::Episode::Source::_Targets
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Targets-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Source/_Targets./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->distinguished_exceptions->provide(
		my $hash_element_missing = 'hash_element_missing',
		my $array_index_outbound = 'array_index_outbound');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_ARRAY] = [];
	$this->[ATR_INDEX] = {};

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-add-head -->8--#
sub add
# /type method
# /effect ""
# //parameters
#	element
# //returns
{ #--8<-- sub-add-open -->8--#
	my ($this) = @ARGUMENTS;

	push($this->[ATR_ARRAY], $_[SPX_ELEMENT]);
	my $key = Scalar::Util::refaddr($_[SPX_ELEMENT]);
	$this->[ATR_INDEX]{$key} = $#{$this->[ATR_ARRAY]};
	return;
} #--8<-- sub-add-close -->8--#

#FIXME: duplicates code of Carrot::Personality::None::Array::Indexed::Single
#--8<-- sub-remove-head -->8--#
sub remove
# /type method
# /effect ""
# //parameters
#	element
# //returns
{ #--8<-- sub-remove-open -->8--#
	my ($this, $element) = @ARGUMENTS;

	my $key = Scalar::Util::refaddr($element);
#FIXME: these are actually assertions
	unless (exists($this->[ATR_INDEX]{$key}))
	{
#No such element '%s' in index.
		$hash_element_missing->raise_exception(
			{'key' => $key},
			ERROR_CATEGORY_SETUP);
	}
	my $offset = delete($this->[ATR_INDEX]{$key});
	unless (exists($this->[ATR_ARRAY][$offset]))
	{
#No such offset '%s' in array.
		$array_index_outbound->raise_exception(
			{'index' => $offset,
			 'size' => scalar(@{$this->[ATR_ARRAY]})},
			ERROR_CATEGORY_SETUP);
	}
	splice($this->[ATR_ARRAY], $offset, 1);
	return;
} #--8<-- sub-remove-close -->8--#

#--8<-- sub-arrayref-head -->8--#
sub arrayref
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-arrayref-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_ARRAY]);
} #--8<-- sub-arrayref-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Targets-close -->8--#
# //revision_control
#	version 1.1.58
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"