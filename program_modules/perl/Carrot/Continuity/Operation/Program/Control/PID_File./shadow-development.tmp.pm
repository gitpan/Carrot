#--8<-- package-Carrot::Continuity::Operation::Program::Control::PID_File-head -->8--#
package Carrot::Continuity::Operation::Program::Control::PID_File
# /type class
# /implements [=project_pkg=]::_Plugin_Prototype
# /attribute_type ::Many_Declared::Ordered
# /capability "Records the process pid in a file."
{ #--8<-- package-Carrot::Continuity::Operation::Program::Control::PID_File-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		$expressiveness->parent_classes->add('Carrot::Continuity::Operation::Program::_Plugin_Prototype');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Operation/Program/Control/PID_File./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->class_names->provide(
		my $pid_file_class = '::Personality::Valued::File::Content::PID_File');

	$expressiveness->provide(
		my $customized_settings = '::Individuality::Controlled::Customized_Settings');

	$customized_settings->provide_plain_value(
		my $file_name = 'file_name');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	information_barb  ::Personality::Reflective::Information_Barb
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $information_barb) = @ARGUMENTS;

#	$$this = $file_name->value;
#	$information_barb->resolve_standard_placeholders($this);

	$this->[ATR_PID_FILE] = $pid_file_class->indirect_constructor('/tmp/carrot.pid');
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-activate-head -->8--#
sub activate
# /type implementation
{ #--8<-- sub-activate-open -->8--#
	$_[THIS][ATR_PID_FILE]->store_current;
	return;
} #--8<-- sub-activate-close -->8--#

#--8<-- sub-deactivate-head -->8--#
sub deactivate
# /type implementation
{ #--8<-- sub-deactivate-open -->8--#
	$_[THIS][ATR_PID_FILE]->remove;
	return;
} #--8<-- sub-deactivate-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Operation::Program::Control::PID_File-close -->8--#
# //revision_control
#	version 1.1.101
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"