#--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Corporate-head -->8--#
package Carrot::Continuity::Coordination::Episode::Source::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Source/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->class_names->provide_instance(
		my $loop = '[=project_pkg=]::Loop');

# =--------------------------------------------------------------------------= #

sub T_ETERNITY() { 2**31 -1; };

#--8<-- sub-max_timeout-head -->8--#
sub max_timeout
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Seconds
{ #--8<-- sub-max_timeout-open -->8--#
	my () = @ARGUMENTS;
	return(T_ETERNITY);
} #--8<-- sub-max_timeout-close -->8--#

#--8<-- sub-await-head -->8--#
sub await
# /type method
# /effect ""
# //parameters
#	value
# //returns
{ #--8<-- sub-await-open -->8--#
	my () = @ARGUMENTS;
	sleep($_[SPX_VALUE]);
	return;
} #--8<-- sub-await-close -->8--#

#--8<-- sub-DESTROY-head -->8--#
sub DESTROY
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-DESTROY-open -->8--#
	my () = @ARGUMENTS;
	#--8<-- if-ANON00137-head -->8--#
	if (defined($loop))
	{ #--8<-- if-ANON00137-open -->8--#
		$loop->deregister($_[THIS]);
		$loop = IS_UNDEFINED;
	} #--8<-- if-ANON00137-close -->8--#
} #--8<-- sub-DESTROY-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::_Corporate-close -->8--#
# //revision_control
#	version 1.1.54
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"