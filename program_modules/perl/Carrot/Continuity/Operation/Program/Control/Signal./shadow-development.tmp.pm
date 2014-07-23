#--8<-- package-Carrot::Continuity::Operation::Program::Control::Signal-head -->8--#
package Carrot::Continuity::Operation::Program::Control::Signal
# /type class
# /implements [=project_pkg=]::_Plugin_Prototype
# /attribute_type ::Many_Declared::Ordered
# /capability "Program termination by signal."
{ #--8<-- package-Carrot::Continuity::Operation::Program::Control::Signal-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		$expressiveness->parent_classes->add('Carrot::Continuity::Operation::Program::_Plugin_Prototype');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Operation/Program/Control/Signal./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $loop = '::Continuity::Coordination::Episode::Loop',
		my $customized_settings = '::Individuality::Controlled::Customized_Settings');

	$expressiveness->class_names->provide(
		my $signal_target_class =
			'::Continuity::Coordination::Episode::Target::Signal');

	$customized_settings->provide_plain_value(
		my $default_name = 'default_name');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	information_barb
#	signal_name
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $information_barb, $signal_name) = @ARGUMENTS;

#	$loop->construct_standard_episode(
#		'::Target::Signal', $this, $signal_name // $default_name);
	my $signal = $signal_target_class->indirect_constructor(
		$this,
		'evt_signal_any',
		$signal_name // $default_name);

	$this->[ATR_SIGNAL] = $signal;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-activate-head -->8--#
sub activate
# /type implementation
{ #--8<-- sub-activate-open -->8--#
	$_[THIS][ATR_SIGNAL]->activate;
	return;
} #--8<-- sub-activate-close -->8--#

#--8<-- sub-deactivate-head -->8--#
sub deactivate
# /type implementation
{ #--8<-- sub-deactivate-open -->8--#
	$_[THIS][ATR_SIGNAL]->deactivate;
	return;
} #--8<-- sub-deactivate-close -->8--#

#--8<-- sub-evt_signal_any-head -->8--#
sub evt_signal_any
# /type method
# /effect "Processes the event of a termination signal (SIGTERM)."
# //parameters
# //returns
{ #--8<-- sub-evt_signal_any-open -->8--#
	my () = @ARGUMENTS;
	$loop->leave;
	return;
} #--8<-- sub-evt_signal_any-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Operation::Program::Control::Signal-close -->8--#
# //revision_control
#	version 1.1.66
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"