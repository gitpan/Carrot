#--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Universal-head -->8--#
package Carrot::Individuality::Controlled::Localized_Messages::Universal
# /type class  /instances none
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Universal-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		Carrot::Meta::Greenhouse::Package_Loader::mark_no;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Localized_Messages/Universal./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
		my $localized_messages = '::Individuality::Controlled::Localized_Messages');

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Universal-close -->8--#
# //revision_control
#	version 1.1.42
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"