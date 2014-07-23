#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure
# /type class  /instances none
# //tabulators
#	::Discrete
#	::Flat
#	::List
#	::Table
#	::Table::Format
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		
		Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
			my $pkg_tabulator = '::Modularity::Package::Tabulator');
		$pkg_tabulator->add($expressiveness, [qw(	::Discrete
	::Flat
	::List
	::Table
	::Table::Format)]);
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure./shadow-development.tmp.pm');
	} #END-1406047946

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure-close -->8--#
# //revision_control
#	version 1.1.24
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"