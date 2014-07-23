#--8<-- package-Carrot::Productivity::Text::Placeholder::Miniplate::_Corporate-head -->8--#
package Carrot::Productivity::Text::Placeholder::Miniplate::_Corporate
# /type class  /instances none
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Productivity::Text::Placeholder::Miniplate::_Corporate-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Productivity/Text/Placeholder/Miniplate/_Corporate./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-find_call-head -->8--#
sub find_call
# /type method
# /effect ""
# //parameters
#	placeholder
# //returns
#	?
{ #--8<-- sub-find_call-open -->8--#
	my ($this, $placeholder) = @ARGUMENTS;

	my $format = (($placeholder =~ s{@(.+)$}{}) ? $1 : undef);
	my $can = $this->can("syp_$placeholder");

	#--8<-- if-ANON00040-head -->8--#
	if (defined($can))
	{ #--8<-- if-ANON00040-open -->8--#
		return([$can, [$this, $format]]);
	} else {
		return(IS_UNDEFINED);
	} #--8<-- if-ANON00040-close -->8--#
} #--8<-- sub-find_call-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Productivity::Text::Placeholder::Miniplate::_Corporate-close -->8--#
# //revision_control
#	version 1.1.39
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"