#--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Monad-head -->8--#
package Carrot::Individuality::Controlled::Distinguished_Exceptions::Monad
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Monad-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Distinguished_Exceptions/Monad./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $potential_class = '[=project_pkg=]::Potential');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	resolver
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $resolver) = @ARGUMENTS;

	$this->[ATR_RESOLVER] = $resolver;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-provide-head -->8--#
sub provide
# /type method
# /effect "Replaces the supplied string with an instance."
# //parameters
#	name  +multiple
# //returns
{ #--8<-- sub-provide-open -->8--#
	my $this = shift(\@ARGUMENTS);

	#--8<-- foreach-ANON00041-head -->8--#
	foreach my $name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00041-open -->8--#
		my $exception = $potential_class->indirect_constructor(
			$this->[ATR_RESOLVER],
			$name);
		$name = $exception;
	} #--8<-- foreach-ANON00041-close -->8--#

	return;
} #--8<-- sub-provide-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Monad-close -->8--#
# //revision_control
#	version 1.1.63
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"