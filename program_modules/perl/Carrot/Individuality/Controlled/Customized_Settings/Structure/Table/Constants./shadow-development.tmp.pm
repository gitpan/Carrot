#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants
# /type class  /instances none
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Structure/Table/Constants./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $distinguished_exceptions =
			'::Individuality::Controlled::Distinguished_Exceptions');

	$distinguished_exceptions->provide(
		my $invalid_row_format = 'invalid_row_format');

	sub RKY_LINE_TABLE_DELETE()
	# /type constant  /inheritable
	{ 'G' }

	sub RKY_LINE_TABLE_DEFAULTS()
	# /type constant  /inheritable
	{ 'H' }

	sub RKY_LINE_TABLE_DATA()
	# /type constant  /inheritable
	{ 'I' }

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants-close -->8--#
# //revision_control
#	version 1.1.36
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"