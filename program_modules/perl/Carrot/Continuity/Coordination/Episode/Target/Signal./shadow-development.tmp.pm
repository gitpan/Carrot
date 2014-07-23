#--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Signal-head -->8--#
package Carrot::Continuity::Coordination::Episode::Target::Signal
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Signal-open -->8--#
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
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Target/Signal./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->class_names->provide_instance(
		my $source = '[=project_pkg=]::Source::Signals');

	my $default_name = 'evt_signal';

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	that            ::Personality::Abstract::Instance
#	name
#	signal
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $that, $name, $signal) = @ARGUMENTS;

	my $callback = $this->create_callback(
		$that,
		$default_name.'_'.lc($signal),
		$name);
	@$this = ($that, $callback, $signal, IS_FALSE, IS_UNDEFINED);
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-activate-head -->8--#
sub activate
# /type method
# /effect "Activates the main feature of the instance."
# //parameters
# //returns
{ #--8<-- sub-activate-open -->8--#
	my ($this) = @ARGUMENTS;

	return if ($this->[ATR_ACTIVATED]);
	#--8<-- if-ANON00125-head -->8--#
	if ($source->register($this, $this->[ATR_VALUE]))
	{ #--8<-- if-ANON00125-open -->8--#
		$this->[ATR_ACTIVATED] = IS_TRUE;
	} #--8<-- if-ANON00125-close -->8--#
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
	#--8<-- if-ANON00126-head -->8--#
	if ($source->deregister($this, $this->[ATR_VALUE]))
	{ #--8<-- if-ANON00126-open -->8--#
		$this->[ATR_ACTIVATED] = IS_FALSE;
	} #--8<-- if-ANON00126-close -->8--#
	return;
} #--8<-- sub-deactivate-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::Signal-close -->8--#
# //revision_control
#	version 1.1.65
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"