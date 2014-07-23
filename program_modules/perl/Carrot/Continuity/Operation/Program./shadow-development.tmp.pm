#--8<-- package-Carrot::Continuity::Operation::Program-head -->8--#
package Carrot::Continuity::Operation::Program
# /type class
# /attribute_type ::Many_Declared::Ordered
# //tabulators
# /capability "(De-)Activates configured plugins for program operation."
{ #--8<-- package-Carrot::Continuity::Operation::Program-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw()]);
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Operation/Program./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $loop = '::Continuity::Coordination::Episode::Loop',
		my $program_arguments =
			'::Individuality::Singular::Application::Program_Arguments',
		'::Individuality::Controlled::',
			my $class_names = '::Class_Names',
			my $customized_settings = '::Customized_Settings');

	$program_arguments->provide(my $plain_arguments = '');

	$customized_settings->provide_plain_value(
		my $context_name = 'context_name');
	$customized_settings->provide_value(
		my $features = 'features');

	$class_names->provide(
		my $context_class =
			'::Personality::Reflective::Information_Barb');
	$class_names->assign_anchor('::Continuity::Operation::Program');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this) = @ARGUMENTS;

	#--8<-- if-ANON00000-head -->8--#
	if ($#$plain_arguments == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00000-open -->8--#
		die("Usage: $PROGRAM_NAME  some_program_cfg\n");
	} #--8<-- if-ANON00000-close -->8--#

#FIXME: awful, should be specified and retrieved accordingly
	my $program_name = $plain_arguments->[ADX_FIRST_ELEMENT];
	$this->[ATR_PROGRAM_NAME] = $program_name;
	$this->[ATR_FEATURES] = [];

#FIXME: fill with application_directories
	my $information_barb = $context_class->indirect_constructor;
	$information_barb->extend(
		$context_name,
		$this);
#FIXME: migrate
#	$information_barb->assign_value('pid', $PROCESS_ID);

	my $plugins = $features->row_1xN_merged(['*', $program_name], 'plugin');
	# /eval_escalation program_plugin_failed
	#--8<-- foreach-ANON00001-head -->8--#
	foreach my $plugin (@$plugins)
	{ #--8<-- foreach-ANON00001-open -->8--#
		my $feature = $plugin->indirect_instance(
			$class_names,
			$information_barb);
		push($this->[ATR_FEATURES], $feature);
	} #--8<-- foreach-ANON00001-close -->8--#

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-run-head -->8--#
sub run
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-run-open -->8--#
	my ($this) = @ARGUMENTS;

	# /eval_escalation feature_activation_failed
	#--8<-- foreach-ANON00002-head -->8--#
	foreach my $feature (@{$this->[ATR_FEATURES]})
	{ #--8<-- foreach-ANON00002-open -->8--#
		$feature->activate;
	} #--8<-- foreach-ANON00002-close -->8--#

	print STDERR "Starting Loop\n";
#	die;
#	return(IS_TRUE);
#	exit;
	$loop->iterate;
	print STDERR "Ending Loop\n";

	#--8<-- foreach-ANON00003-head -->8--#
	foreach my $feature (@{$this->[ATR_FEATURES]})
	{ #--8<-- foreach-ANON00003-open -->8--#
		$feature->deactivate;
	} #--8<-- foreach-ANON00003-close -->8--#

	return(IS_TRUE);
} #--8<-- sub-run-close -->8--#

#--8<-- sub-terminate-head -->8--#
sub terminate
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-terminate-open -->8--#
	my () = @ARGUMENTS;
	print STDERR "Leaving Loop\n";
	$loop->leave;
} #--8<-- sub-terminate-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Operation::Program-close -->8--#
# //revision_control
#	version 1.1.306
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"