#--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error-head -->8--#
package Carrot::Individuality::Singular::Execution::Fatal_Error
# /type class
# /attribute_type ::One_Anonymous::Scalar
# /capability ""
{ #--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Scalar');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Singular/Execution/Fatal_Error./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->class_names->provide(
		my $details_class = '::Individuality::Singular::Execution::Fatal_Error::Details');
	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

#--8<-- sub-trigger-head -->8--#
sub trigger
# /type method
# /effect ""
# /parameters *
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-trigger-open -->8--#
	my $this = shift(\@ARGUMENTS);
	die($this->record(@ARGUMENTS))
} #--8<-- sub-trigger-close -->8--#

#--8<-- sub-record-head -->8--#
sub record
# /type method
# /effect ""
# /parameters *
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-record-open -->8--#
	my $this = shift(\@ARGUMENTS);
	return($details_class->indirect_constructor(@ARGUMENTS));
} #--8<-- sub-record-close -->8--#

#--8<-- sub-trigger_here-head -->8--#
sub trigger_here
# /type method
# /effect ""
# /parameters *
# //returns
{ #--8<-- sub-trigger_here-open -->8--#
	my () = @ARGUMENTS;
	shift(\@ARGUMENTS)->trigger([caller(1)], @ARGUMENTS);
	return;
} #--8<-- sub-trigger_here-close -->8--#

#--8<-- sub-trigger_there-head -->8--#
sub trigger_there
# /type method
# /effect ""
# /parameters *
# //returns
{ #--8<-- sub-trigger_there-open -->8--#
	my () = @ARGUMENTS;
	shift(\@ARGUMENTS)->trigger([caller(2)], @ARGUMENTS);
	return;
} #--8<-- sub-trigger_there-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Singular::Execution::Fatal_Error-close -->8--#
# //revision_control
#	version 1.1.57
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"