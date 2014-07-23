#--8<-- package-Carrot::Individuality::Controlled::Class_Names-head -->8--#
package Carrot::Individuality::Controlled::Class_Names
# /type class
# //tabulators
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Class_Names-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw()]);
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Class_Names./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $dot_ini_class = '::Meta::Greenhouse::Dot_Ini',
		my $inheritance_class = '::Modularity::Object::Inheritance::ISA_Occupancy');
	$expressiveness->package_resolver->provide_name_only(
		my $monad_class = '[=this_pkg=]::Monad');

	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_MONADS] = {};
	$this->[ATR_MONAD_CLASS] = $monad_class;
	$this->[ATR_CONFIG] = {};

	my $dot_ini = $dot_ini_class->indirect_constructor($this);
	$dot_ini->find_configuration;

	my $universal = []; #FIXME: fill with life
	my $inheritance = $inheritance_class->indirect_constructor(
		$this->[ATR_MONADS], $universal);

	$monad_class->load($inheritance);

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-dot_ini_got_section-head -->8--#
sub dot_ini_got_section
# /type method
# /effect "Processes a section from an .ini file."
# //parameters
#	name
#	lines
# //returns
{ #--8<-- sub-dot_ini_got_section-open -->8--#
	my ($this, $name, $lines) = @ARGUMENTS;

	my $config = $this->[ATR_CONFIG];
	unless (exists($config->{$name}))
	{
		$config->{$name} = [];
	}
	push($config->{$name}, @$lines);

	return;
} #--8<-- sub-dot_ini_got_section-close -->8--#

#--8<-- sub-_manual_principle-head -->8--#
sub _manual_principle
# /type method
# /effect ""
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
#	?
{ #--8<-- sub-_manual_principle-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	my $pkg_name = $meta_monad->package_name->value;

	my $mapping = {};
	#--8<-- if-ANON00010-head -->8--#
	if (exists($this->[ATR_CONFIG]{$pkg_name}))
	{ #--8<-- if-ANON00010-open -->8--#
		my $lines = delete($this->[ATR_CONFIG]{$pkg_name});
		#--8<-- foreach-ANON00011-head -->8--#
		foreach my $line (@$lines)
		{ #--8<-- foreach-ANON00011-open -->8--#
			my ($key, $value) = split(qr{\h+}, $line, 2);
			$mapping->{$key} = $value;
		} #--8<-- foreach-ANON00011-close -->8--#
	} #--8<-- if-ANON00010-close -->8--#
	my $monad = $monad_class->indirect_constructor(
		$meta_monad,
		$mapping);

	return($monad);
} #--8<-- sub-_manual_principle-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Class_Names-close -->8--#
# //revision_control
#	version 1.1.99
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Truemper <win@carrot-programming.org>"