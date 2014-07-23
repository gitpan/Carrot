#--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time-head -->8--#
package Carrot::Continuity::Coordination::Episode::Source::Time
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Continuity::Coordination::Episode::Source::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Source/Time./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $epoch_time = '::Individuality::Singular::Process::Epoch_Time',
		my $class_names = '::Individuality::Controlled::Class_Names');

	$expressiveness->distinguished_exceptions->provide(
		my $too_far_in_past = 'too_far_in_past');

	$class_names->provide_instance(
		my $loop = '[=project_pkg=]::Loop');
	$class_names->provide(
		'[=component_pkg=]::',
			my $timeline_class = '::Time::Line',
			my $targets_class = '::_Targets');

	sub T_ETERNITY() { 2**31 -1; };

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_TARGETS] = {};
	$this->[ATR_TIMELINE] = $timeline_class->indirect_constructor(
		[T_ETERNITY]);

	$loop->register($this);
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-max_timeout-head -->8--#
sub max_timeout
# /type method
# /effect ""
# //parameters
#	timeout         ::Personality::Abstract::Seconds
# //returns
#	?
{ #--8<-- sub-max_timeout-open -->8--#
	my () = @ARGUMENTS;
	#--8<-- if-ANON00143-head -->8--#
	if ($#{$_[THIS][ATR_TIMELINE]} > 0)
	{ #--8<-- if-ANON00143-open -->8--#
		return($_[THIS][ATR_TIMELINE][ADX_FIRST_ELEMENT] - $$epoch_time);
	} else {
		return($_[SPX_TIMEOUT]);
	} #--8<-- if-ANON00143-close -->8--#
} #--8<-- sub-max_timeout-close -->8--#

#--8<-- sub-dispatch-head -->8--#
sub dispatch
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-dispatch-open -->8--#
	my ($this) = @ARGUMENTS;

	my $timeline = $this->[ATR_TIMELINE];

	#--8<-- while-ANON00144-head -->8--#
	while ($#$timeline > 0)
	{ #--8<-- while-ANON00144-open -->8--#
		last if ($timeline->[ADX_FIRST_ELEMENT] > $$epoch_time);
		my $t1 = shift(@$timeline);
		my $targets = delete($this->[ATR_TARGETS]{$t1});
		#--8<-- foreach-ANON00145-head -->8--#
		foreach my $target (@{$targets->arrayref})
		{ #--8<-- foreach-ANON00145-open -->8--#
			$target->hit($t1);
		} #--8<-- foreach-ANON00145-close -->8--#
	} #--8<-- while-ANON00144-close -->8--#
	return;
} #--8<-- sub-dispatch-close -->8--#

#--8<-- sub-register-head -->8--#
sub register
# /type method
# /effect ""
# //parameters
#	target
#	t1
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-register-open -->8--#
	my ($this, $target, $t1) = @ARGUMENTS;

#	if (ASSERTION_FLAG and ($t1 < ($$epoch_time - 3600)))
#	{
#		$too_far_in_past->raise_exception(
#			{+HKY_DEX_BACKTRACK => $t1,
#			 'time' => scalar(localtime($t1))},
#			ERROR_CATEGORY_SETUP);
#	}
	my $targets = $this->[ATR_TARGETS];
	unless (exists($targets->{$t1}))
	{
		$targets->{$t1} = $targets_class->indirect_constructor;
		$this->[ATR_TIMELINE]->insert($t1);
	}
	$targets->{$t1}->add($target);

	return(IS_TRUE);
} #--8<-- sub-register-close -->8--#

#--8<-- sub-deregister-head -->8--#
sub deregister
# /type method
# /effect ""
# //parameters
#	target
#	t1
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-deregister-open -->8--#
	my ($this, $target, $t1) = @ARGUMENTS;

	my $targets = $this->[ATR_TARGETS];
	return unless (exists($targets->{$t1}) and defined($targets->{$t1}));
	$targets->{$t1}->remove($target);
	#--8<-- if-ANON00146-head -->8--#
	if ($#{$targets->{$t1}} == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00146-open -->8--#
		delete($targets->{$t1});
		$this->[ATR_TIMELINE]->remove($t1);
	} #--8<-- if-ANON00146-close -->8--#
	return(IS_TRUE);
} #--8<-- sub-deregister-close -->8--#

#sub DESTROY
# /type method
# /effect ""
# //parameters
# //returns
#{
#	my ($this) = @ARGUMENTS;
#
#	if (defined($loop))
#	{
#		$loop->deregister($this);
#		$loop = IS_UNDEFINED;
#	}
#}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time-close -->8--#
# //revision_control
#	version 1.1.96
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"