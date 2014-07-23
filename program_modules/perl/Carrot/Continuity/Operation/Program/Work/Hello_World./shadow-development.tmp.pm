#--8<-- package-Carrot::Continuity::Operation::Program::Work::Hello_World-head -->8--#
package Carrot::Continuity::Operation::Program::Work::Hello_World
# /type class
# /implements [=project_pkg=]::_Plugin_Prototype
# /capability "A sample program plugin."
{ #--8<-- package-Carrot::Continuity::Operation::Program::Work::Hello_World-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add('Carrot::Continuity::Operation::Program::_Plugin_Prototype');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Operation/Program/Work/Hello_World./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $loop = '::Continuity::Coordination::Episode::Loop',
		my $customized_settings = '::Individuality::Controlled::Customized_Settings');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	information_barb
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $information_barb) = @ARGUMENTS;

	$customized_settings->provide_plain_value(
		my $seconds = 'seconds_to_wait');
	print STDERR "S: $seconds\n";
	$this->[ATR_CHECK] = $loop->construct_standard_episode(
		'::Target::Periodic', $this, $seconds);

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-activate-head -->8--#
sub activate
# /type implementation
{ #--8<-- sub-activate-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_CHECK]->activate;

	return;
} #--8<-- sub-activate-close -->8--#

#--8<-- sub-deactivate-head -->8--#
sub deactivate
# /type implementation
{ #--8<-- sub-deactivate-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_CHECK]->deactivate;

	return;
} #--8<-- sub-deactivate-close -->8--#

#--8<-- sub-evt_time_periodic-head -->8--#
sub evt_time_periodic
# /type method
# /effect "Act on a periodic time event."
# //parameters
# //returns
{ #--8<-- sub-evt_time_periodic-open -->8--#
	my ($this) = @ARGUMENTS;

	print STDERR "Hello World $PROCESS_ID\n";

	return;
} #--8<-- sub-evt_time_periodic-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Operation::Program::Work::Hello_World-close -->8--#
# //revision_control
#	version 1.1.79
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"