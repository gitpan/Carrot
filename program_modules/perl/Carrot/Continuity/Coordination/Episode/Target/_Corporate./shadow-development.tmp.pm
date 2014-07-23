#--8<-- package-Carrot::Continuity::Coordination::Episode::Target::_Corporate-head -->8--#
package Carrot::Continuity::Coordination::Episode::Target::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Target/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $distinguished_exceptions = '::Individuality::Controlled::Distinguished_Exceptions');

	$distinguished_exceptions->provide(
		my $missing_target_callback = 'missing_target_callback',
		my $non_activated_target = 'non_activated_target');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	die('A dummy for the definition of attributes.');
	$this->[ATR_THAT] = IS_UNDEFINED;
	$this->[ATR_CALLBACK] = IS_UNDEFINED;
	$this->[ATR_VALUE] = IS_UNDEFINED;
	$this->[ATR_ACTIVATED] = IS_UNDEFINED;
	$this->[ATR_DATA] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-is_activated-head -->8--#
sub is_activated
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_activated-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_ACTIVATED])
} #--8<-- sub-is_activated-close -->8--#

#--8<-- sub-hit-head -->8--#
sub hit
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-hit-open -->8--#
	my () = @ARGUMENTS;
	return(&{$_[THIS][ATR_CALLBACK]}($_[THIS][ATR_THAT], @ARGUMENTS));
} #--8<-- sub-hit-close -->8--#

#--8<-- sub-create_callback-head -->8--#
sub create_callback
# /type method
# /effect ""
# //parameters
#	that            ::Personality::Abstract::Instance
#	default_name
#	name
# //returns
#	?
{ #--8<-- sub-create_callback-open -->8--#
	my ($this, $that, $default_name, $name) = @ARGUMENTS;

	my $method;
	#--8<-- if-ANON00127-head -->8--#
	if (defined($name))
	{ #--8<-- if-ANON00127-open -->8--#
		#--8<-- if-ANON00128-head -->8--#
		if (substr($name, 0, 1) eq '_')
		{ #--8<-- if-ANON00128-open -->8--#
			$method = $default_name . $name;
		} else {
			$method = $name;
		} #--8<-- if-ANON00128-close -->8--#
	} else {
		$method = $default_name;
	} #--8<-- if-ANON00127-close -->8--#
	my $callback = $that->can($method);
	unless (defined($callback))
	{
		$missing_target_callback->raise_exception(
			{+HKY_DEX_BACKTRACK => $that,
			 'method' => $method,
			 'class' => $that->class_name},
			ERROR_CATEGORY_SETUP);
	}
	return($callback);
} #--8<-- sub-create_callback-close -->8--#

#--8<-- sub-enforce_activation-head -->8--#
sub enforce_activation
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-enforce_activation-open -->8--#
	my () = @ARGUMENTS;
	#--8<-- if-ANON00129-head -->8--#
	if ($_[THIS][ATR_ACTIVATED] == 0)
	{ #--8<-- if-ANON00129-open -->8--#
		$non_activated_target->raise_exception(
			{+HKY_DEX_BACKTRACK => $_[THIS],
			 'class' => $_[THIS]->class_name},
			ERROR_CATEGORY_SETUP);
	} #--8<-- if-ANON00129-close -->8--#
	return;
} #--8<-- sub-enforce_activation-close -->8--#

#--8<-- sub-DESTROY-head -->8--#
sub DESTROY
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-DESTROY-open -->8--#
	my () = @ARGUMENTS;
	#--8<-- if-ANON00130-head -->8--#
	if (defined($_[THIS]))
	{ #--8<-- if-ANON00130-open -->8--#
		$_[THIS]->deactivate;
	} #--8<-- if-ANON00130-close -->8--#
	return;
} #--8<-- sub-DESTROY-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Target::_Corporate-close -->8--#