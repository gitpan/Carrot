#--8<-- package-Carrot::Continuity::Coordination::Episode::Loop-head -->8--#
package Carrot::Continuity::Coordination::Episode::Loop
# /type class  /instances singular
# /project_entry [=parent_pkg=]
# /attribute_type ::Many_Declared::Ordered
# /capability "The standard main event loop."
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Loop-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		$expressiveness->class_names->provide(
		my $project_entry = q{Carrot::Continuity::Coordination::Episode});
		Carrot::Meta::Greenhouse::Package_Loader::mark_singular;
		$expressiveness->package_resolver->provide(
			my $episode = 'Carrot::Continuity::Coordination::Episode');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Loop./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $epoch_time = '::Individuality::Singular::Process::Epoch_Time',
		my $class_names = '::Individuality::Controlled::Class_Names',
		my $distinguished_exceptions = '::Individuality::Controlled::Distinguished_Exceptions');

	$class_names->assign_anchor('[=project_pkg=]');

	$distinguished_exceptions->provide(
		my $non_reentrant = 'non_reentrant');

	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

sub T_ETERNITY() { 2**31 -1; };

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	timeout         ::Personality::Abstract::Seconds
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_MAX_TIMEOUT] = exists($_[SPX_TIMEOUT])
		? $_[SPX_TIMEOUT]
		: T_ETERNITY;

	$this->[ATR_SOURCES] = [];
	$this->[ATR_CONTINUE] = IS_FALSE;
	$this->[ATR_RUNNING] = IS_FALSE;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-construct_episode-head -->8--#
sub construct_episode
# /type method
# /effect ""
# /parameters *
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-construct_episode-open -->8--#
	my $this = shift(\@ARGUMENTS);

	return($class_names->indirect_instance(@ARGUMENTS));
} #--8<-- sub-construct_episode-close -->8--#

#--8<-- sub-construct_standard_episode-head -->8--#
sub construct_standard_episode
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
#	that            ::Personality::Abstract::Instance
#	*
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-construct_standard_episode-open -->8--#
	my ($this, $pkg_name, $that) = splice(\@ARGUMENTS, 0, 3);

	return($class_names->indirect_instance(
		       $pkg_name,
		       $that,
		       IS_UNDEFINED,
		       @ARGUMENTS));
} #--8<-- sub-construct_standard_episode-close -->8--#

#--8<-- sub-register-head -->8--#
sub register
# /type method
# /effect ""
# //parameters
#	source
# //returns
{ #--8<-- sub-register-open -->8--#
	my ($this, $source) = @ARGUMENTS;

	#FIXME: should this become a role?
	#--8<-- if-ANON00004-head -->8--#
	if ($source->can('priority_high'))
	{ #--8<-- if-ANON00004-open -->8--#
		unshift($this->[ATR_SOURCES], $source);
	} else {
		push($this->[ATR_SOURCES], $source);
	} #--8<-- if-ANON00004-close -->8--#
	return;
} #--8<-- sub-register-close -->8--#

#--8<-- sub-deregister-head -->8--#
sub deregister
# /type method
# /effect ""
# //parameters
#	source
# //returns
{ #--8<-- sub-deregister-open -->8--#
	my ($this, $source) = @ARGUMENTS;

	#--8<-- foreach-ANON00005-head -->8--#
	foreach my $registered_source (splice($this->[ATR_SOURCES]))
	{ #--8<-- foreach-ANON00005-open -->8--#
		next unless (defined($registered_source)); #global destruction?
		next if ($registered_source->is_itself($source)),
		push($this->[ATR_SOURCES], $registered_source);
	} #--8<-- foreach-ANON00005-close -->8--#
	return;
} #--8<-- sub-deregister-close -->8--#

#--8<-- sub-leave-head -->8--#
sub leave
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-leave-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_CONTINUE] = IS_FALSE;
	return;
} #--8<-- sub-leave-close -->8--#

#--8<-- sub-is_running-head -->8--#
sub is_running
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_running-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_RUNNING]);
} #--8<-- sub-is_running-close -->8--#

#--8<-- sub-iterate-head -->8--#
sub iterate
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-iterate-open -->8--#
	my ($this) = @ARGUMENTS;

	#--8<-- if-ANON00006-head -->8--#
	if ($this->[ATR_RUNNING])
	{ #--8<-- if-ANON00006-open -->8--#
		$non_reentrant->raise_exception(
			{},
			ERROR_CATEGORY_IMPLEMENTATION);
	} #--8<-- if-ANON00006-close -->8--#

	my $sources = $this->[ATR_SOURCES];
	return if ($#$sources == ADX_NO_ELEMENTS);

	$this->[ATR_RUNNING] = IS_TRUE;
	$this->[ATR_CONTINUE] = IS_TRUE;
	#--8<-- while-ANON00007-head -->8--#
	while ($this->[ATR_CONTINUE])
	{ #--8<-- while-ANON00007-open -->8--#
		my $timeout = $this->[ATR_MAX_TIMEOUT];
		$epoch_time->update;
		#--8<-- foreach-ANON00008-head -->8--#
		foreach my $source (@$sources)
		{ #--8<-- foreach-ANON00008-open -->8--#
			my $t1 = $source->max_timeout($timeout);
			$timeout = restrict_to_positive_maximum($t1, $timeout);
			last if ($timeout == 0);
		} #--8<-- foreach-ANON00008-close -->8--#

		$sources->[ADX_FIRST_ELEMENT]->await($timeout);

		$epoch_time->update;
		#--8<-- foreach-ANON00009-head -->8--#
		foreach my $source (@$sources)
		{ #--8<-- foreach-ANON00009-open -->8--#
			$source->dispatch;
		} #--8<-- foreach-ANON00009-close -->8--#
	} #--8<-- while-ANON00007-close -->8--#
	$this->[ATR_CONTINUE] = IS_FALSE;
	$this->[ATR_RUNNING] = IS_FALSE;

	return;
} #--8<-- sub-iterate-close -->8--#

#--8<-- sub-restrict_to_positive_maximum-head -->8--#
sub restrict_to_positive_maximum
# /type function
# /effect ""
# //parameters
#	value
#	upper_limit
# //returns
#	::Personality::Abstract::Number
{ #--8<-- sub-restrict_to_positive_maximum-open -->8--#
	my () = @ARGUMENTS;
	return(($_[SPX_VALUE] > $_[SPX_UPPER_LIMIT])
		? $_[SPX_UPPER_LIMIT]
		: (($_[SPX_VALUE] < 0)
			? 0
			: $_[SPX_VALUE]));
} #--8<-- sub-restrict_to_positive_maximum-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Loop-close -->8--#
# //revision_control
#	version 1.1.122
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"