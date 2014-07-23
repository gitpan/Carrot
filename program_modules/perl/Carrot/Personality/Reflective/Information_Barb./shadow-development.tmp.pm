#--8<-- package-Carrot::Personality::Reflective::Information_Barb-head -->8--#
package Carrot::Personality::Reflective::Information_Barb
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Personality::Reflective::Information_Barb-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Reflective/Information_Barb./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->class_names->provide(
		'Carrot::Personality::Reflective::Information_Barb::',
			my $information_barb_class = '::Step');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_STEPS] = {};
	$this->[ATR_ACTIVE] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-extend-head -->8--#
sub extend
# /type method
# /effect ""
# //parameters
#	name
#	subject
# //returns
#	?
{ #--8<-- sub-extend-open -->8--#
	my ($this, $name, $subject) = @ARGUMENTS;

	#--8<-- if-ANON00034-head -->8--#
	if (exists($this->[ATR_STEPS]{$name}))
	{ #--8<-- if-ANON00034-open -->8--#
#FIXME: why the die here?
		die("Attempt to create existing top level chain '$name'.");
#		$hash_key_duplicate->raise_exception(
#			{+HKY_DEX_BACKTRACK => $name,
#			 'key' => $name,
#			 'hash' => '$this->[ATR_STEPS]',
#			 'value' => \$this->[ATR_STEPS]{$name}},
#			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00034-close -->8--#

	my $step = $information_barb_class->indirect_constructor(
		$subject);

	my $successor = [{%{$this->[ATR_STEPS]}}, $step];
	$successor->[ATR_STEPS]{$name} = $step;

	bless($successor, $this->class_name);
	$successor->lock_attribute_structure;

	#--8<-- if-ANON00035-head -->8--#
	if (defined($this->[ATR_ACTIVE]))
	{ #--8<-- if-ANON00035-open -->8--#
		$this->[ATR_ACTIVE]->used;
	} #--8<-- if-ANON00035-close -->8--#

	return($successor);
} #--8<-- sub-extend-close -->8--#

#--8<-- sub-formatted_path_value-head -->8--#
sub formatted_path_value
# /type method
# /effect ""
# //parameters
#	root
#	path
#	format
# //returns
#	::Personality::Abstract::Text
{ #--8<-- sub-formatted_path_value-open -->8--#
	my ($this, $root, $path, $format) = @ARGUMENTS;

	return('??') unless (exists($this->[ATR_STEPS]{$root}));
	my $step = $this->[ATR_STEPS]{$root};
	return($step->formatted_path_value($path, $format));
} #--8<-- sub-formatted_path_value-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Reflective::Information_Barb-close -->8--#
# //revision_control
#	version 1.1.53
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"