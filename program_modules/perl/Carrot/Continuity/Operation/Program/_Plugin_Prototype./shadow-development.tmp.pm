#--8<-- package-Carrot::Continuity::Operation::Program::_Plugin_Prototype-head -->8--#
package Carrot::Continuity::Operation::Program::_Plugin_Prototype
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability "Defines the prototype (interface) of a program plugin."
{ #--8<-- package-Carrot::Continuity::Operation::Program::_Plugin_Prototype-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Operation/Program/_Plugin_Prototype./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #



# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Operation::Program::_Plugin_Prototype-close -->8--#
# //revision_control
#	version 1.1.131
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"