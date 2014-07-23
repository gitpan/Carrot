#--8<-- package-Carrot::Individuality::Singular::Process::Epoch_Time-head -->8--#
package Carrot::Individuality::Singular::Process::Epoch_Time
# /type class
# /attribute_type ::One_Anonymous::Scalar
# /capability ""
{ #--8<-- package-Carrot::Individuality::Singular::Process::Epoch_Time-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Scalar');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Singular/Process/Epoch_Time./shadow-development.tmp.pm');
	} #END-1406047946
	use Time::HiRes qw(time);

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $distinguished_exceptions = '::Individuality::Controlled::Distinguished_Exceptions');

	$distinguished_exceptions->provide(
		my $time_manipulation_detected = 'time_manipulation_detected');

	my $now = my $t0 = 0;

	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

#--8<-- sub-constructor-head -->8--#
sub constructor
# /type class_method
# /effect "Constructs a new instance."
# //parameters
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-constructor-open -->8--#
	my $class = shift(\@ARGUMENTS);

	my $this = \$now;
	bless($this, $class);
	$this->update;
	return($this);
} #--8<-- sub-constructor-close -->8--#

#--8<-- sub-update-head -->8--#
sub update
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-update-open -->8--#
	my () = @ARGUMENTS;
	unless ($t0 == $now)
	{
		$time_manipulation_detected->raise_exception(
			{'now' => $now,
			 't0' => $t0},
			ERROR_CATEGORY_IMPLEMENTATION);
	}
	$t0 = $now = Time::HiRes::time();
	return;
} #--8<-- sub-update-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Singular::Process::Epoch_Time-close -->8--#
# //revision_control
#	version 1.1.51
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"