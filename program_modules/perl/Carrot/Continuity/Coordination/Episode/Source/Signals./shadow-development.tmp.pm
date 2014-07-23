#--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Signals-head -->8--#
package Carrot::Continuity::Coordination::Episode::Source::Signals
# /type class
# //parent_classes
#	[=component_pkg=]::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Signals-open -->8--#
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
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Source/Signals./shadow-development.tmp.pm');
	} #END-1406047946
	use POSIX ();

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $class_names = '::Individuality::Controlled::Class_Names');

	$expressiveness->distinguished_exceptions->provide(
		my $disabled_pipe_signal = 'disabled_pipe_signal',
		my $reserved_vtalrm_signal = 'reserved_vtalrm_signal',
		my $os_signal_unknown = 'os_signal_unknown');

	$class_names->provide_instance(
		my $loop = '[=project_pkg=]::Loop');
	$class_names->provide(
		my $targets_class = '[=component_pkg=]::_Targets');

	$OS_SIGNALS{'PIPE'} = 'IGNORE'; # not ignoring would disable the required EPIPE

# =--------------------------------------------------------------------------= #

sub BYS_IDX_FORMER() { 0 };
sub BYS_IDX_TARGETS() { 1 };
sub BYS_IDX_RECEIVED() { 2 };
sub BYS_IDX_DATA() { 3 };

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_BY_SIGNAL] = {};
	$this->[ATR_RECEIVED] = IS_FALSE;

	$loop->register($this);
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-priority_high-head -->8--#
sub priority_high
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-priority_high-open -->8--#
	my () = @ARGUMENTS;
	return;
} #--8<-- sub-priority_high-close -->8--#

#--8<-- sub-dispatch-head -->8--#
sub dispatch
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-dispatch-open -->8--#
	my ($this) = @ARGUMENTS;

	return unless ($this->[ATR_RECEIVED]);

	my $signals = $this->[ATR_BY_SIGNAL];
	#--8<-- foreach-ANON00131-head -->8--#
	foreach my $key (keys($signals))
	{ #--8<-- foreach-ANON00131-open -->8--#
		my $signal = $signals->{$key};
		next if ($signal->[BYS_IDX_RECEIVED] == 0);
		my $data = [
			$signal->[BYS_IDX_RECEIVED],
			[@{$signal->[BYS_IDX_DATA]}]
		];
		$signal->[BYS_IDX_RECEIVED] = 0;
		$signal->[BYS_IDX_DATA] = [];
		#--8<-- foreach-ANON00132-head -->8--#
		foreach my $target (@{$signal->[BYS_IDX_TARGETS]->arrayref})
		{ #--8<-- foreach-ANON00132-open -->8--#
			$target->hit(@$data);
		} #--8<-- foreach-ANON00132-close -->8--#
	} #--8<-- foreach-ANON00131-close -->8--#
	$this->[ATR_RECEIVED] = IS_FALSE;
	return;
} #--8<-- sub-dispatch-close -->8--#

#--8<-- sub-register-head -->8--#
sub register
# /type method
# /effect ""
# //parameters
#	target
#	signal
# //returns
#	?
{ #--8<-- sub-register-open -->8--#
	my ($this, $target, $signal) = @ARGUMENTS;

	#--8<-- if-ANON00133-head -->8--#
	if ($signal eq 'PIPE')
	{ #--8<-- if-ANON00133-open -->8--#
		$disabled_pipe_signal->raise_exception(
			{+HKY_DEX_BACKTRACK => $signal,
			 'signal' => $signal},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00133-close -->8--#
	#--8<-- if-ANON00134-head -->8--#
	if ($signal eq 'VTALRM')
	{ #--8<-- if-ANON00134-open -->8--#
		$reserved_vtalrm_signal->raise_exception(
			{+HKY_DEX_BACKTRACK => $signal,
			 'signal' => $signal},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00134-close -->8--#
	unless (exists($OS_SIGNALS{$signal}))
	{
		$os_signal_unknown->raise_exception(
			{+HKY_DEX_BACKTRACK => $signal,
			 'signal' => $signal},
			ERROR_CATEGORY_SETUP);
	}

	unless (exists($this->[ATR_BY_SIGNAL]{$signal}))
	{
		my $targets = $targets_class->indirect_constructor;
		$this->[ATR_BY_SIGNAL]{$signal} = [$OS_SIGNALS{$signal}, $targets, 0, []];
#FIXME: change this to POSIX signal handling
		my $handler_method = "SIG${signal}_handler";
		unless ($this->can($handler_method))
		{
			$handler_method = "SIGX_handler";
		}
		$OS_SIGNALS{$signal} = $this->$handler_method($signal);
	}
	$this->[ATR_BY_SIGNAL]{$signal}[BYS_IDX_TARGETS]->add($target);
	return(PERL_FILE_LOADED);
} #--8<-- sub-register-close -->8--#

#--8<-- sub-deregister-head -->8--#
sub deregister
# /type method
# /effect ""
# //parameters
#	target
#	signal
# //returns
#	?
{ #--8<-- sub-deregister-open -->8--#
	my ($this, $target, $signal) = @ARGUMENTS;

	unless (exists($OS_SIGNALS{$signal})) { #ASSERTION#
		$os_signal_unknown->raise_exception(
			{+HKY_DEX_BACKTRACK => $signal,
			 'name' => $signal},
			ERROR_CATEGORY_SETUP);
	}

	my $track = $this->[ATR_BY_SIGNAL]{$signal};
	return unless (defined($track->[BYS_IDX_TARGETS]));
	$track->[BYS_IDX_TARGETS]->remove($target);
	#--8<-- if-ANON00135-head -->8--#
	if ($#{$track->[BYS_IDX_TARGETS]} == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00135-open -->8--#
		$OS_SIGNALS{$signal} = $track->[BYS_IDX_FORMER];
		delete($this->[ATR_BY_SIGNAL]{$signal});
	} #--8<-- if-ANON00135-close -->8--#
	return(PERL_FILE_LOADED);
} #--8<-- sub-deregister-close -->8--#

#--8<-- sub-SIGX_handler-head -->8--#
sub SIGX_handler
# /type method
# /effect ""
# //parameters
#	signal
# //returns
#	?
{ #--8<-- sub-SIGX_handler-open -->8--#
	my ($this, $signal) = @ARGUMENTS;

	my $handler = IS_UNDEFINED;
	$handler = sub {
		$this->[ATR_BY_SIGNAL]{$signal}[BYS_IDX_RECEIVED] += 1;
		$this->[ATR_RECEIVED] = IS_TRUE;
		$OS_SIGNALS{$signal} = $handler;
	};
	return($handler);
} #--8<-- sub-SIGX_handler-close -->8--#

#--8<-- sub-SIGCHLD_handler-head -->8--#
sub SIGCHLD_handler
# /type method
# /effect ""
# //parameters
#	signal
# //returns
#	?
{ #--8<-- sub-SIGCHLD_handler-open -->8--#
	my ($this, $signal) = @ARGUMENTS;

	my $handler = IS_UNDEFINED;
	my $by_signal = $this->[ATR_BY_SIGNAL]{'CHLD'};
	my $received = $by_signal->[BYS_IDX_DATA];

	$handler = sub {
#FIXME: unchecked whether the constant exists...
		#--8<-- while-ANON00136-head -->8--#
		while ((my $child = POSIX::waitpid(-1, POSIX::WNOHANG)) > 0)
		{ #--8<-- while-ANON00136-open -->8--#
			push($received, [$child, ${^CHILD_ERROR_NATIVE}]);
		} #--8<-- while-ANON00136-close -->8--#
		$by_signal->[BYS_IDX_RECEIVED] += 1;
		$this->[ATR_RECEIVED] = IS_TRUE;
		$OS_SIGNALS{'CHLD'} = $handler;
	};
	return($handler);
} #--8<-- sub-SIGCHLD_handler-close -->8--#

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
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Signals-close -->8--#
# //revision_control
#	version 1.1.100
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"