#--8<-- package-Carrot::Individuality::Controlled::Localized_Messages-head -->8--#
package Carrot::Individuality::Controlled::Localized_Messages
# /type class
# //tabulators
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages-open -->8--#
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
		$expressiveness->global_constants->add_plugins(
			'[=this_pkg=]::Constants');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Localized_Messages./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	my $package_resolver = $expressiveness->package_resolver;
	$package_resolver->provide(
		my $directory_name_class = '::Personality::Valued::File::Name::Type::Directory',
		my $array_class = '::Personality::Elemental::Array::Texts',
		my $dot_ini_class = '::Meta::Greenhouse::Dot_Ini',
		'::Modularity::Object::Inheritance::',
			my $inheritance_class = '::ISA_Occupancy',
			my $search_path_class = '::Directory_Tree::Name_Language');

	$package_resolver->provide_name_only(
		'[=this_pkg=]::',
			my $monad_class = '::Monad',
			my $prototype_class = '::Prototype');

	$package_resolver->provide_instance(
		my $pkg_patterns = '::Modularity::Package::Patterns',
		my $site_directories = '::Personality::Valued::File::Name::Type::Directory::Search_Path');

	my $directory_name = $directory_name_class->indirect_constructor(
		$pkg_patterns->dot_directory_from_file($PROGRAM_NAME)
		.'localized_messages');
	#--8<-- if-ANON00021-head -->8--#
	if ($directory_name->exists)
	{ #--8<-- if-ANON00021-open -->8--#
		$site_directories->append_if_distinct($directory_name);
	} #--8<-- if-ANON00021-close -->8--#

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
	$this->[ATR_SITE_DIRECTORIES] = $site_directories;
	$this->[ATR_UNI_CLASSES] = $array_class->indirect_constructor;
	$this->[ATR_OPERATOR_LANGUAGES] = $array_class->indirect_constructor;
	$this->[ATR_FALLBACK_LANGUAGE] = 'en_US'; #FIXME: hardcoded values

	my $inheritance = $inheritance_class->indirect_constructor(
		$this->[ATR_MONADS],
		$this->[ATR_UNI_CLASSES]);

	my $search_path = $search_path_class->indirect_constructor(
		$this->[ATR_SITE_DIRECTORIES],
		$this->[ATR_FALLBACK_LANGUAGE],
		$this->[ATR_OPERATOR_LANGUAGES]);

	$monad_class->load($inheritance, $search_path);

	$prototype_class->load(
		$this->[ATR_OPERATOR_LANGUAGES]);

	return;
} #--8<-- sub-attribute_construction-close -->8--#

# sub fallback_language
# # method (<this>) public
# {
# 	return($_[THIS][ATR_FALLBACK_LANGUAGE]);
# }
#
# sub operator_languages
# # method (<this>) public
# {
# 	return($_[THIS][ATR_OPERATOR_LANGUAGES]);
# }

#--8<-- sub-add_universal-head -->8--#
sub add_universal
# /type method
# /effect ""
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
{ #--8<-- sub-add_universal-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	$this->manual_individuality($meta_monad);
	$this->dot_ini_got_package_name($meta_monad->package_name);
	return;
} #--8<-- sub-add_universal-close -->8--#

#--8<-- sub-final_monad_setup-head -->8--#
sub final_monad_setup
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-final_monad_setup-open -->8--#
	my ($this) = @ARGUMENTS;

	$package_resolver->provide(
		my $universal_class =  '[=this_pkg=]::Universal');

	$this->[ATR_UNI_CLASSES]->append_if_distinct(
		$universal_class->value);

	my $dot_ini = $dot_ini_class->indirect_constructor($this);
	$dot_ini->find_configuration;

	$this->[ATR_OPERATOR_LANGUAGES]->append_if_distinct(
		$this->[ATR_FALLBACK_LANGUAGE]);
	return;
} #--8<-- sub-final_monad_setup-close -->8--#

#--8<-- sub-dot_ini_got_association-head -->8--#
sub dot_ini_got_association
# /type method
# /effect "Processes an association from an .ini file."
# //parameters
#	name
#	value
# //returns
{ #--8<-- sub-dot_ini_got_association-open -->8--#
	my ($this, $name, $value) = @ARGUMENTS;

	#--8<-- if-ANON00022-head -->8--#
	if ($name eq 'operator_languages')
	{ #--8<-- if-ANON00022-open -->8--#
		@{$this->[ATR_OPERATOR_LANGUAGES]} =
			split(qr{,\h*}, $value, PKY_SPLIT_RETURN_FULL_TRAIL);

	} elsif ($name eq 'fallback_language')
	{
		$this->[ATR_FALLBACK_LANGUAGE] = $value;
	} #--8<-- if-ANON00022-close -->8--#

	return;
} #--8<-- sub-dot_ini_got_association-close -->8--#

#--8<-- sub-dot_ini_got_directory_name-head -->8--#
sub dot_ini_got_directory_name
# /type method
# /effect "Processes a directory name from an .ini file."
# //parameters
#	directory_name  ::Personality::Valued::File::Name::Type::Directory
# //returns
{ #--8<-- sub-dot_ini_got_directory_name-open -->8--#
	my ($this, $directory_name) = @ARGUMENTS;

	$this->[ATR_SITE_DIRECTORIES]->append_if_distinct(
		$directory_name);

	return;
} #--8<-- sub-dot_ini_got_directory_name-close -->8--#

#--8<-- sub-dot_ini_got_package_name-head -->8--#
sub dot_ini_got_package_name
# /type method
# /effect "Processes a package name from na .ini file."
# //parameters
#	package_name    ::Modularity::Package::Name
# //returns
{ #--8<-- sub-dot_ini_got_package_name-open -->8--#
	my ($this, $package_name) = @ARGUMENTS;

	$package_name->load;
	$this->[ATR_UNI_CLASSES]->append_if_distinct(
		$package_name->value);

	return;
} #--8<-- sub-dot_ini_got_package_name-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages-close -->8--#
# //revision_control
#	version 1.1.265
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"