#--8<-- package-Carrot::Productivity::Text::Placeholder-head -->8--#
package Carrot::Productivity::Text::Placeholder
# /type class  /instances none
# //tabulators
#	::Template
#	::Miniplate
# /capability ""
{ #--8<-- package-Carrot::Productivity::Text::Placeholder-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw(	::Template
	::Miniplate)]);
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Productivity/Text/Placeholder./shadow-development.tmp.pm');
	} #END-1406047946

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Productivity::Text::Placeholder-close -->8--#
# //revision_control
#	version 1.1.38
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"