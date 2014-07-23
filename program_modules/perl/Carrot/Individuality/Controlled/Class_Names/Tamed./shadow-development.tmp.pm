#--8<-- package-Carrot::Individuality::Controlled::Class_Names::Tamed-head -->8--#
package Carrot::Individuality::Controlled::Class_Names::Tamed
# /type class
# //parent_classes
#	::Individuality::Controlled::Class_Names::Monad
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Class_Names::Tamed-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Class_Names::Monad
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Class_Names/Tamed./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $translated_errors = '::Meta::Greenhouse::Translated_Errors',
		my $array_class = '::Personality::Elemental::Array::Texts',
		my $prefixed_list_class = '::Modularity::Package::Prefixed_List');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

# Hey ::Modularity::Constant::Parental::Ordered_Attributes, we use these:
# ATR_PREFIX ATR_MAPPING ATR_RESOLVED
	#--8<-- if-ANON00019-head -->8--#
	if ($#$this == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00019-open -->8--#
		$this->superseded;
	} #--8<-- if-ANON00019-close -->8--#
	$this->[ATR_CHECKED_PACKAGES] = {};
	$this->[ATR_TRUSTED_PREFIXES] = $array_class->indirect_constructor;
	$this->[ATR_REQUIRED_METHODS] = [];

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-add_trusted_name_prefix-head -->8--#
sub add_trusted_name_prefix
# /type method
# /effect ""
# //parameters
#	prefix  +multiple
# //returns
{ #--8<-- sub-add_trusted_name_prefix-open -->8--#
	my $this = shift(\@ARGUMENTS);

	$this->[ATR_TRUSTED_PREFIXES]->append_if_distinct(@ARGUMENTS);
	$this->[ATR_CHECKED_PACKAGES] = {};
	return;
} #--8<-- sub-add_trusted_name_prefix-close -->8--#

#--8<-- sub-add_required_methods-head -->8--#
sub add_required_methods
# /type method
# /effect ""
# //parameters
#	method_name  +multiple
# //returns
{ #--8<-- sub-add_required_methods-open -->8--#
	my $this = shift(\@ARGUMENTS);

	push($this->[ATR_REQUIRED_METHODS], @ARGUMENTS);
	$this->[ATR_CHECKED_PACKAGES] = {};
	return;
} #--8<-- sub-add_required_methods-close -->8--#

#FIXME: unused and broken
#sub is_trusted_name
## method (<this>, <pkg_name>) public
#{
#	my ($this, $pkg_name) = @ARGUMENTS;
#
#	if (exists($this->[ATR_CHECKED_PACKAGES]{$pkg_name}))
#	{
#		return(IS_TRUE);
#	}
#	unless ($pkg_name->matches_prefixes($this->[ATR_TRUSTED_PREFIXES]))
#	{
#		return(IS_FALSE);
#	}
#	$this->[ATR_CHECKED_PACKAGES]{$pkg_name} = 1;
#	return(IS_TRUE);
#}

#FIXME: duplicates too much of the overwritten method
#--8<-- sub-provide-head -->8--#
sub provide
# /type method
# /effect "Replaces the supplied string with an instance."
# //parameters
#	pkg_name  +multiple  ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-provide-open -->8--#
	my $this = shift(\@ARGUMENTS);

	my $anchor = $this->lookup_prefix;
	my $pkg_symbol = $this->[ATR_PACKAGE_NAME]->value;
	#--8<-- foreach-ANON00020-head -->8--#
	foreach my $pkg_name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00020-open -->8--#
		next if ($prefixed_list_class->is_anchor_prefix(
			$pkg_name,
			$anchor,
			$pkg_symbol));

		my $package_name = $this->resolve($pkg_name, $anchor);
		my $PKG_NAME = $package_name->value;
		unless (exists($this->[ATR_CHECKED_PACKAGES]{$PKG_NAME}))
		{
			unless ($this->[ATR_TRUSTED_PREFIXES]
				->matches_as_prefixes($pkg_name->value))
			{
				$translated_errors->advocate(
					'illegal_package_prefix',
					[$PKG_NAME,
					join(', ', @{$this->[ATR_TRUSTED_PREFIXES]})]);
			}
			unless ($this->has_required_methods)
			{
				$translated_errors->advocate(
					'missing_method',
					[$PKG_NAME,
					join(', ', @{$this->[ATR_TRUSTED_PREFIXES]})]);
			}
			$this->[ATR_CHECKED_PACKAGES]{$PKG_NAME} = 1;
		}

		$pkg_name = $package_name;
	} #--8<-- foreach-ANON00020-close -->8--#
	return;
} #--8<-- sub-provide-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Class_Names::Tamed-close -->8--#
# //revision_control
#	version 1.1.105
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"