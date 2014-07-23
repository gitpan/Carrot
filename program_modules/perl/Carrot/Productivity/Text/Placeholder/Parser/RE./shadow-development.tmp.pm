#--8<-- package-Carrot::Productivity::Text::Placeholder::Parser::RE-head -->8--#
package Carrot::Productivity::Text::Placeholder::Parser::RE
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Productivity::Text::Placeholder::Parser::RE-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Productivity/Text/Placeholder/Parser/RE./shadow-development.tmp.pm');
	} #END-1406047946

my $default_re = qr{^(.*?)\[=(.+?)=\]}s;

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $re) = @ARGUMENTS;
	$re //= $default_re;

	$this->[ATR_RE] = $re;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-split_text-head -->8--#
sub split_text
# /type method
# /effect ""
# //parameters
#	format
# //returns
#	?
{ #--8<-- sub-split_text-open -->8--#
	my ($this, $format) = @ARGUMENTS;

	my $re = $this->[ATR_RE];
	my $text = [];
	#--8<-- while-ANON00033-head -->8--#
	while ($format =~ s{$re}{})
	{ #--8<-- while-ANON00033-open -->8--#
		push($text, [$1, $2]);
	} #--8<-- while-ANON00033-close -->8--#
	push($text, [$format, '']);

	return($text);
} #--8<-- sub-split_text-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Productivity::Text::Placeholder::Parser::RE-close -->8--#