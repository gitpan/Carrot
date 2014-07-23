#--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Periodic-head -->8--#
package Carrot::Continuity::Coordination::Episode::Target::Periodic
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Periodic-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Continuity::Coordination::Episode::Target::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Target/Periodic./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $epoch_time = '::Individuality::Singular::Process::Epoch_Time');

	$expressiveness->class_names->provide_instance(
		my $source = '[=project_pkg=]::Source::Time');

	my $default_name = 'evt_time_periodic';

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	that            ::Personality::Abstract::Instance
#	name
#	period
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $that, $name, $period) = @ARGUMENTS;

	my $callback = $this->create_callback($that, $default_name, $name);
	@$this = ($that, $callback, IS_UNDEFINED, IS_FALSE, $period);
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-hit-head -->8--#
sub hit
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-hit-open -->8--#
	my ($this) = @ARGUMENTS;

	my $rv = &{$this->[ATR_CALLBACK]}($this->[ATR_THAT], @ARGUMENTS);
	$this->reactivate;
	return($rv);
} #--8<-- sub-hit-close -->8--#


#--8<-- sub-reactivate-head -->8--#
sub reactivate
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-reactivate-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_VALUE] += $this->[ATR_DATA];
	#--8<-- if-ANON00140-head -->8--#
	if ($source->register($this, $this->[ATR_VALUE]))
	{ #--8<-- if-ANON00140-open -->8--#
		$this->[ATR_ACTIVATED] = IS_TRUE;
	} #--8<-- if-ANON00140-close -->8--#
	return;
} #--8<-- sub-reactivate-close -->8--#

#--8<-- sub-activate-head -->8--#
sub activate
# /type method
# /effect "Activates the main feature of the instance."
# //parameters
# //returns
{ #--8<-- sub-activate-open -->8--#
	my ($this) = @ARGUMENTS;

	return if ($this->[ATR_ACTIVATED]);
	$this->[ATR_VALUE] = $$epoch_time + $this->[ATR_DATA];
	#--8<-- if-ANON00141-head -->8--#
	if ($source->register($this, $this->[ATR_VALUE]))
	{ #--8<-- if-ANON00141-open -->8--#
		$this->[ATR_ACTIVATED] = IS_TRUE;
	} #--8<-- if-ANON00141-close -->8--#
	return;
} #--8<-- sub-activate-close -->8--#


#--8<-- sub-deactivate-head -->8--#
sub deactivate
# /type method
# /effect "Activates the main feature of the instance."
# //parameters
# //returns
{ #--8<-- sub-deactivate-open -->8--#
	my ($this) = @ARGUMENTS;

	return unless ($this->[ATR_ACTIVATED]);
	return unless (defined($source));
	#--8<-- if-ANON00142-head -->8--#
	if ($source->deregister($this, $this->[ATR_VALUE]))
	{ #--8<-- if-ANON00142-open -->8--#
		$this->[ATR_ACTIVATED] = IS_FALSE;
	} #--8<-- if-ANON00142-close -->8--#
	return;
} #--8<-- sub-deactivate-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Periodic-close -->8--#
# //revision_control
#	version 1.1.75
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"