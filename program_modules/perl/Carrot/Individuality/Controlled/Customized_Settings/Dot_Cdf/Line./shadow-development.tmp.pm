#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::Line-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::Line
# /type class
# //parent_classes
#	::Personality::Valued::Text::Line::Classified
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::Line-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Valued::Text::Line::Classified));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Dot_Cdf/Line./shadow-development.tmp.pm');
	} #END-1406047946


# =--------------------------------------------------------------------------= #

#--8<-- sub-is_name-head -->8--#
sub is_name
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_name-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^name(?:\t| {4})(\w+) *$});
} #--8<-- sub-is_name-close -->8--#

#--8<-- sub-is_some_class-head -->8--#
sub is_some_class
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_some_class-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^(flat|source|list|element|table|row|column)(?:\t| +)(.*)$});
} #--8<-- sub-is_some_class-close -->8--#

#--8<-- sub-is_separator-head -->8--#
sub is_separator
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_separator-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^-{8}\h*$});
} #--8<-- sub-is_separator-close -->8--#

#--8<-- sub-is_data-head -->8--#
sub is_data
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_data-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^(?:\t| {8})\h*(.*?)\h*$});
} #--8<-- sub-is_data-close -->8--#

#--8<-- sub-is_quoted_data-head -->8--#
sub is_quoted_data
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_quoted_data-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^'(?:\t| {7})(.*)$});
} #--8<-- sub-is_quoted_data-close -->8--#

#--8<-- sub-is_anchor-head -->8--#
sub is_anchor
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_anchor-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^anchor(?:\t| {1})([\w\:]+::)$});
} #--8<-- sub-is_anchor-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::Line-close -->8--#
# //revision_control
#	version 1.1.84
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"