#--8<-- package-Carrot::Individuality::Controlled::Class_Names::Monad-head -->8--#
package Carrot::Individuality::Controlled::Class_Names::Monad
# /type class
# //parent_classes
#	::Individuality::Controlled::_Corporate::Monad
# //parameters
#	inheritance  ::Modularity::Object::Inheritance::ISA_Occupancy
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Class_Names::Monad-open -->8--#
	my ($inheritance) = @ARGUMENTS;
#	my ($inheritance) = @ARGUMENTS;

	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::_Corporate::Monad
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Class_Names/Monad./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $array_class = '::Personality::Elemental::Array::Instances',
		my $tamed_class = '[=project_pkg=]::Tamed');

	$expressiveness->package_resolver->provide_instance(
		'::Modularity::Package::',
			my $pkg_patterns = '::Patterns',
			my $prefixed_list = '::Prefixed_List',
			my $package_resolver = '::Resolver');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	meta_monad  ::Meta::Monad
#	mapping
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $meta_monad, $mapping) = @ARGUMENTS;
#	my ($this, $meta_monad, $mapping) = @ARGUMENTS;

	$this->[ATR_PERL_ISA] = $meta_monad->parent_classes->perl_isa;
	$this->[ATR_PACKAGE_NAME] = $meta_monad->package_name,
	$this->[ATR_ANCHOR] = IS_UNDEFINED;
	$this->[ATR_MAPPING] = $mapping;
	$this->[ATR_RESOLVED] = {};

#FIXME: resolve wildcard instructions in $mapping \W=RE

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-tamed-head -->8--#
sub tamed
# /type method
# /effect ""
# /parameters *
# //returns
#	?
{ #--8<-- sub-tamed-open -->8--#
	my $this = shift(\@ARGUMENTS);

	my $tamed = $this->clone_constructor(@ARGUMENTS);
	$tamed->re_constructor($tamed_class->value);

	return($tamed);
} #--8<-- sub-tamed-close -->8--#

#--8<-- sub-assign_anchor-head -->8--#
sub assign_anchor
# /type method
# /effect ""
# //parameters
#	anchor          ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-assign_anchor-open -->8--#
	my ($this, $anchor) = @ARGUMENTS;

	$pkg_patterns->resolve_placeholders(
		$anchor,
		$this->[ATR_PACKAGE_NAME]->value);

	my $package_name = $this->resolve(
		$anchor,
		$this->[ATR_ANCHOR] // 'Carrot');
	$this->[ATR_ANCHOR] = $package_name->value;

	return;
} #--8<-- sub-assign_anchor-close -->8--#

my $anchor_lookup_ = \&anchor_lookup_;
#--8<-- sub-anchor_lookup_-head -->8--#
sub anchor_lookup_
# /type method
# /effect ""
# //parameters
#	seen
# //returns
#	?
{ #--8<-- sub-anchor_lookup_-open -->8--#
	my ($this, $seen) = @ARGUMENTS;

	return(defined($this->[ATR_ANCHOR])
		? $this->[ATR_ANCHOR]
		: $inheritance->first_defined_skip_seen(
			$this->[ATR_PERL_ISA],
			$anchor_lookup_,
			$seen));
} #--8<-- sub-anchor_lookup_-close -->8--#

#--8<-- sub-anchor_lookup-head -->8--#
sub anchor_lookup
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-anchor_lookup-open -->8--#
	my ($this, $seen) = @ARGUMENTS;

	my $anchor = $this->anchor_lookup_($this->initially_seen);
	return($anchor // 'Carrot');
} #--8<-- sub-anchor_lookup-close -->8--#

# /comment all

#no use case so far
#--8<-- sub-provide_name_only-head -->8--#
sub provide_name_only
# /type method
# /effect ""
# //parameters
#	pkg_name  +multiple  ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-provide_name_only-open -->8--#
	my $this = shift(\@ARGUMENTS);

	my $pkg_symbol = $this->[ATR_PACKAGE_NAME]->value;
	my $anchor = $this->anchor_lookup;

	#--8<-- if-ANON00014-head -->8--#
	if (0)
	{ #--8<-- if-ANON00014-open -->8--#
		my $file_name = '';
		re_match($file_name,
			' PERIOD  WORD_CHARACTER MANY_TIMES  ON_END ',
			'ENGLISH, SAFER_UNICODE, SINGLE_LINE');
	} #--8<-- if-ANON00014-close -->8--#

	return;
} #--8<-- sub-provide_name_only-close -->8--#

#--8<-- sub-provide-head -->8--#
sub provide
# /type method
# /effect "Replaces the supplied string with an instance."
# //parameters
#	pkg_name  +multiple       ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-provide-open -->8--#
	my $this = shift(\@ARGUMENTS);

	my $pkg_symbol = $this->[ATR_PACKAGE_NAME]->value;
	my $anchor = $this->anchor_lookup;
	#--8<-- foreach-ANON00015-head -->8--#
	foreach my $pkg_name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00015-open -->8--#
		next if ($prefixed_list->is_anchor_prefix(
			$pkg_name,
			$anchor,
			$pkg_symbol));

		my $package_name = $this->resolve_n_load($pkg_name, $anchor);
		$pkg_name = $package_name;
	} #--8<-- foreach-ANON00015-close -->8--#
	return;
} #--8<-- sub-provide-close -->8--#

my $map_lookup = \&map_lookup;
#--8<-- sub-map_lookup-head -->8--#
sub map_lookup
# /type method
# /effect ""
# //parameters
#	seen
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	?
{ #--8<-- sub-map_lookup-open -->8--#
	my ($this, $seen, $pkg_name) = @ARGUMENTS;

	my $mapping = $this->[ATR_MAPPING];
	#--8<-- if-ANON00016-head -->8--#
	if (defined($mapping->{$pkg_name}))
	{ #--8<-- if-ANON00016-open -->8--#
		return($mapping->{$pkg_name});
	} #--8<-- if-ANON00016-close -->8--#
	return($inheritance->first_defined_skip_seen(
			$this->[ATR_PERL_ISA],
			$map_lookup,
			$seen,
			$pkg_name));
} #--8<-- sub-map_lookup-close -->8--#

#--8<-- sub-resolve-head -->8--#
sub resolve
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
#	anchor          ::Personality::Abstract::Text
# //returns
#	?
{ #--8<-- sub-resolve-open -->8--#
	my ($this, $pkg_name, $anchor) = @ARGUMENTS;

	#--8<-- if-ANON00017-head -->8--#
	if (exists($this->[ATR_RESOLVED]{$pkg_name}))
	{ #--8<-- if-ANON00017-open -->8--#
		return($this->[ATR_RESOLVED]{$pkg_name});
	} #--8<-- if-ANON00017-close -->8--#

	my $package_name = $package_resolver->resolve(
		$this->map_lookup($this->initially_seen, $pkg_name) // $pkg_name,
		$anchor);

	$this->[ATR_RESOLVED]{$pkg_name} = $package_name;

	return($package_name);
} #--8<-- sub-resolve-close -->8--#

#--8<-- sub-resolve_n_load-head -->8--#
sub resolve_n_load
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
#	anchor          ::Personality::Abstract::Text
# //returns
#	?
{ #--8<-- sub-resolve_n_load-open -->8--#
	my ($this, $pkg_name, $anchor) = @ARGUMENTS;

	my $package_name = $this->resolve($pkg_name, $anchor // 'Carrot');
	$package_name->load;

	return($package_name);
} #--8<-- sub-resolve_n_load-close -->8--#

#--8<-- sub-indirect_instance-head -->8--#
sub indirect_instance
# /type method
# /effect ""
# //parameters
#	pkg_name  ::Personality::Abstract::Text
#	*
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-indirect_instance-open -->8--#
	my ($this, $pkg_name) = splice(\@ARGUMENTS, 0, 2);

	unless (Scalar::Util::blessed($pkg_name))
	{
		$pkg_patterns->resolve_placeholders(
			$pkg_name,
			$this->[ATR_PACKAGE_NAME]->value);
		$pkg_name = $this->resolve_n_load(
			$pkg_name,
			$this->anchor_lookup);
	}
	return($pkg_name->indirect_constructor(@ARGUMENTS));
} #--8<-- sub-indirect_instance-close -->8--#

#--8<-- sub-indirect_instances-head -->8--#
sub indirect_instances
# /type method
# /effect ""
# //parameters
#	pkg_names       ::Personality::Abstract::Text
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-indirect_instances-open -->8--#
	my $this = shift(\@ARGUMENTS);
	return($array_class->indirect_constructor(
		       [map($this->indirect_instance(@{$_}), @ARGUMENTS)]));
} #--8<-- sub-indirect_instances-close -->8--#

#--8<-- sub-indirect_instance_from_text-head -->8--#
sub indirect_instance_from_text
# /type method
# /effect ""
# //parameters
#	text
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-indirect_instance_from_text-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS]->indirect_instance(
		split(qr{\h+}, $_[SPX_TEXT], PKY_SPLIT_IGNORE_EMPTY_TRAIL)));
} #--8<-- sub-indirect_instance_from_text-close -->8--#

#--8<-- sub-provide_instance-head -->8--#
sub provide_instance
# /type method
# /effect "Replaces the supplied string with an instance of that type."
# //parameters
#	pkg_name  +multiple  ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-provide_instance-open -->8--#
	my $this = shift(\@ARGUMENTS);

	$this->provide(@ARGUMENTS);
	#--8<-- foreach-ANON00018-head -->8--#
	foreach my $pkg_name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00018-open -->8--#
		next if (Scalar::Util::readonly($pkg_name));
		$pkg_name = $this->indirect_instance($pkg_name);
	} #--8<-- foreach-ANON00018-close -->8--#
	return;
} #--8<-- sub-provide_instance-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Class_Names::Monad-close -->8--#
# //revision_control
#	version 1.1.211
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"