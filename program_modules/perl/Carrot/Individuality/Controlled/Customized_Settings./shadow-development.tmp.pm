#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings
# /type class
# //tabulators
#	::Definition
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw(	::Definition)]);
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings./shadow-development.tmp.pm');
	} #END-1406047946

	Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
		my $compilation_name = '::Meta::Greenhouse::Compilation_Name');

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $dot_ini_class = '::Meta::Greenhouse::Dot_Ini',
		my $inheritance_class = '::Modularity::Object::Inheritance::ISA_Occupancy',
		'::Personality::',
			my $cursor_class = '::Reflective::Iterate::Array::Cursor',
			my $search_path_class = '::Valued::File::Name::Type::Directory::Search_Path',
		my $line_class = '[=this_pkg=]::Dot_Cfg::Line',
	);
	$expressiveness->package_resolver->provide_name_only(
		my $monad_class = '[=this_pkg=]::Monad');
	$expressiveness->package_resolver->provide_instance(
		my $pkg_patterns = '::Modularity::Package::Patterns');

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

	$this->[ATR_SEARCH_PATH] = $search_path_class->indirect_constructor;
	$this->[ATR_CONFIG] = {};
	$this->[ATR_INHERITANCE] =
		$inheritance_class->indirect_constructor(
			$this->[ATR_MONADS]);

	$monad_class->load($this->[ATR_INHERITANCE]);

	my $search_path = Carrot::Meta::Greenhouse::Dot_Ini::search_path;
	#--8<-- foreach-ANON00051-head -->8--#
	foreach my $directory_name (@$search_path)
	{ #--8<-- foreach-ANON00051-open -->8--#
		$this->dot_ini_got_directory_name($directory_name);
	} #--8<-- foreach-ANON00051-close -->8--#

	my $dot_ini = $dot_ini_class->indirect_constructor($this);
	$dot_ini->find_configuration;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-dot_ini_got_directory_name-head -->8--#
sub dot_ini_got_directory_name
# /type method
# /effect "Processes a directory name from an .ini file."
# //parameters
#	directory_name  ::Personality::Valued::File::Name::Type::Directory
# //returns
{ #--8<-- sub-dot_ini_got_directory_name-open -->8--#
	my ($this, $directory_name) = @ARGUMENTS;

	unless ($this->[ATR_SEARCH_PATH]->append_if_distinct($directory_name))
	{
		return;
	}

	my $file_name = $directory_name->entry('+.cfg');
	#--8<-- if-ANON00052-head -->8--#
	if ($file_name->exists)
	{ #--8<-- if-ANON00052-open -->8--#
		$file_name->consider_regular_content;
		$this->add_any_config($file_name);
	} #--8<-- if-ANON00052-close -->8--#
	return;
} #--8<-- sub-dot_ini_got_directory_name-close -->8--#

#--8<-- sub-add_any_config-head -->8--#
sub add_any_config
# /type method
# /effect ""
# //parameters
#	file_name       ::Personality::Valued::File::Name
# //returns
{ #--8<-- sub-add_any_config-open -->8--#
	my ($this, $file_name) = @ARGUMENTS;

	my $line = $line_class->indirect_constructor;
	my $cursor = $cursor_class->indirect_constructor(
		$file_name->read_lines,
		$line);
	my $section = [];
	my $name = IS_UNDEFINED;
	my $config = $this->[ATR_CONFIG];
	#--8<-- while-ANON00053-head -->8--#
	while ($cursor->advance)
	{ #--8<-- while-ANON00053-open -->8--#
		#--8<-- if-ANON00054-head -->8--#
		if ($line->is_comment_or_empty)
		{ #--8<-- if-ANON00054-open -->8--#
			next;

		} elsif (my ($text) = $line->is_section)
		{
			#--8<-- if-ANON00055-head -->8--#
			if (defined($name))
			{ #--8<-- if-ANON00055-open -->8--#
				$config->{$name} = $section;
				$section = [];
			} #--8<-- if-ANON00055-close -->8--#
			#--8<-- if-ANON00056-head -->8--#
			if ($pkg_patterns->is_relative_package_name($text))
			{ #--8<-- if-ANON00056-open -->8--#
				$text = 'Carrot'.$text;
			} #--8<-- if-ANON00056-close -->8--#
			$name = $text;

		} else {
			push($section, $$line);

		} #--8<-- if-ANON00054-close -->8--#
	} #--8<-- while-ANON00053-close -->8--#
	#--8<-- if-ANON00057-head -->8--#
	if (defined($name))
	{ #--8<-- if-ANON00057-open -->8--#
		$config->{$name} = $section;
	} #--8<-- if-ANON00057-close -->8--#
	return;
} #--8<-- sub-add_any_config-close -->8--#

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

	my $monad = $monad_class->indirect_constructor(
		$meta_monad);

	my $pkg_name = $meta_monad->package_name->value;
	#--8<-- if-ANON00058-head -->8--#
	if (exists($this->[ATR_CONFIG]{$pkg_name}))
	{ #--8<-- if-ANON00058-open -->8--#
		$monad->customize_by_arrayref(
			delete($this->[ATR_CONFIG]{$pkg_name}));
	} #--8<-- if-ANON00058-close -->8--#
	my $more_cfg_files = $this->[ATR_SEARCH_PATH]->find_all(
		["$pkg_name-$$compilation_name.cfg",
		"$pkg_name.cfg"]);
	$more_cfg_files->run_on_all($monad, 'customize_by_file');

	return($monad);
} #--8<-- sub-_manual_principle-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings-close -->8--#
# //revision_control
#	version 1.1.212
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"