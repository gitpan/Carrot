#--8<-- package-Carrot::Productivity::Text::Placeholder::Template::File::Plain-head -->8--#
package Carrot::Productivity::Text::Placeholder::Template::File::Plain
# /type class
# /project_entry ::Productivity::Text::Placeholder
# //parent_classes
#	[=component_pkg=]::Generic
# /capability ""
{ #--8<-- package-Carrot::Productivity::Text::Placeholder::Template::File::Plain-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Productivity::Text::Placeholder::Template::Generic
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
		$expressiveness->class_names->provide(
		my $project_entry = q{Carrot::Productivity::Text::Placeholder});
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Productivity/Text/Placeholder/Template/File/Plain./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# /parameters *
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my $this = shift(\@ARGUMENTS);

	$this->superseded(@ARGUMENTS);
	$this->[ATR_FILE_NAME] = IS_UNDEFINED;
	$this->[ATR_MTIME] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-set_file-head -->8--#
sub set_file
# /type method
# /effect ""
# //parameters
#	file_name       ::Personality::Valued::File::Name
# //returns
{ #--8<-- sub-set_file-open -->8--#
	my ($this, $file_name) = @ARGUMENTS;

	$file_name->consider_regular_content;
	$this->[ATR_FILE_NAME] = $file_name;
	$this->[ATR_MTIME] = $file_name->status->modification_time;
	return;
} #--8<-- sub-set_file-close -->8--#

#--8<-- sub-modification_timestamp-head -->8--#
sub modification_timestamp
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-modification_timestamp-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_MTIME]);
} #--8<-- sub-modification_timestamp-close -->8--#

#--8<-- sub-compile-head -->8--#
sub compile
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-compile-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_FILE_NAME]->read_into(my $buffer);
	$this->superseded($buffer);
} #--8<-- sub-compile-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Productivity::Text::Placeholder::Template::File::Plain-close -->8--#
# //revision_control
#	version 1.1.70
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"