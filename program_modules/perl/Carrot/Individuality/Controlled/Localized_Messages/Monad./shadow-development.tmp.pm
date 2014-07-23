#--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Monad-head -->8--#
package Carrot::Individuality::Controlled::Localized_Messages::Monad
# /type class
# //parent_classes
#	::Individuality::Controlled::_Corporate::Monad
# //parameters
#	inheritance  ::Modularity::Object::Inheritance::ISA_Occupancy
#	search_path  ::Modularity::Object::Inheritance::Directory_Tree::Name_Language
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Monad-open -->8--#
	my ($inheritance, $search_path) = @ARGUMENTS;

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
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Localized_Messages/Monad./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide_name_only(
		my $prototype_class = '[=project_pkg=]::Prototype');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	meta_monad  ::Meta::Monad
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $meta_monad) = @ARGUMENTS;

	my $msg_directory = $meta_monad->package_file->dot_directory
		->entry('localized_messages');
	$msg_directory->consider_directory;

	$this->[ATR_MSG_DIRECTORY] = $msg_directory;
	$this->[ATR_PERL_ISA] = $meta_monad->parent_classes->perl_isa;
	$this->[ATR_PACKAGE_NAME] = $meta_monad->package_name;
	$this->[ATR_FILE_NAMES] = {};

	return;
} #--8<-- sub-attribute_construction-close -->8--#

my $find_message_file = \&find_message_file;
#--8<-- sub-find_message_file-head -->8--#
sub find_message_file
# /type method
# /effect ""
# //parameters
#	seen
#	msg_name
#	languages
# //returns
#	::Personality::Abstract::Array
{ #--8<-- sub-find_message_file-open -->8--#
	my ($this, $seen, $msg_name, $languages) = @ARGUMENTS;

	$seen //= $this->initially_seen;
	my $file_names = $this->[ATR_FILE_NAMES];
	#--8<-- if-ANON00023-head -->8--#
	if (exists($file_names->{$msg_name}))
	{ #--8<-- if-ANON00023-open -->8--#
		return(IS_UNDEFINED) unless (defined($file_names->{$msg_name}));
		my $available_languages = $file_names->{$msg_name};
		#--8<-- foreach-ANON00024-head -->8--#
		foreach my $language (@$languages)
		{ #--8<-- foreach-ANON00024-open -->8--#
			next unless (exists($available_languages->{$language}));
			return([$language, $available_languages->{$language}]);
		} #--8<-- foreach-ANON00024-close -->8--#
	} #--8<-- if-ANON00023-close -->8--#
	my ($language, $file_name) = $search_path->find_language_file(
		$this->[ATR_PACKAGE_NAME]->value,
		$msg_name,
		'.tpl',
		$languages,
		$this->[ATR_MSG_DIRECTORY]);
	#--8<-- if-ANON00025-head -->8--#
	if (defined($language))
	{ #--8<-- if-ANON00025-open -->8--#
		$file_names->{$msg_name}{$language} = $file_name;
		return([$language, $file_name]);
	} #--8<-- if-ANON00025-close -->8--#

	return($inheritance->first_defined_skip_seen(
			$this->[ATR_PERL_ISA],
			$find_message_file,
			$seen,
			$msg_name,
			$languages));
} #--8<-- sub-find_message_file-close -->8--#

#--8<-- sub-provide_prototype-head -->8--#
sub provide_prototype
# /type method
# /effect ""
# //parameters
#	msg_name  +multiple
# //returns
{ #--8<-- sub-provide_prototype-open -->8--#
	my $this = shift(\@ARGUMENTS);

	#--8<-- foreach-ANON00026-head -->8--#
	foreach my $msg_name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00026-open -->8--#
		$msg_name = $prototype_class->indirect_constructor(
			$this,
			$msg_name);
	} #--8<-- foreach-ANON00026-close -->8--#
	return;
} #--8<-- sub-provide_prototype-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Monad-close -->8--#
# //revision_control
#	version 1.1.117
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"