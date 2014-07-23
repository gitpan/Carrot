#--8<-- package-Carrot::Individuality::Controlled::_Corporate::Monad-head -->8--#
package Carrot::Individuality::Controlled::_Corporate::Monad
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::_Corporate::Monad-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/_Corporate/Monad./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-initially_seen-head -->8--#
sub initially_seen
# /type method
# /effect ""
# //parameters
# //returns
#       ?
{ #--8<-- sub-initially_seen-open -->8--#
	my () = @ARGUMENTS;
        return({$_[THIS]->class_name => 1});
} #--8<-- sub-initially_seen-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::_Corporate::Monad-close -->8--#
# //revision_control
#	version 1.1.37
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"