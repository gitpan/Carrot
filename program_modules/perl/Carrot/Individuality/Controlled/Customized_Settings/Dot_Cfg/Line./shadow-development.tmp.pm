#--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cfg::Line-head -->8--#
package Carrot::Individuality::Controlled::Customized_Settings::Dot_Cfg::Line
# /type class
# /attribute_type ::One_Anonymous::Scalar::Access
# //parent_classes
#	::Personality::Valued::Text::Line::Classified
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cfg::Line-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Valued::Text::Line::Classified
	Carrot::Diversity::Attribute_Type::One_Anonymous::Scalar::Access));
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Scalar::Access');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Customized_Settings/Dot_Cfg/Line./shadow-development.tmp.pm');
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
	return(${$_[THIS]} =~ m{^name(?:\t| {4})(\w+)\h*$});
} #--8<-- sub-is_name-close -->8--#

#--8<-- sub-is_section-head -->8--#
sub is_section
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_section-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^\[(.*)\]$});
} #--8<-- sub-is_section-close -->8--#

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

#--8<-- sub-is_source_class-head -->8--#
sub is_source_class
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_source_class-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^source(?:\t|   )(.+)$});
} #--8<-- sub-is_source_class-close -->8--#

#--8<-- sub-is_data-head -->8--#
sub is_data
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-is_data-open -->8--#
	my () = @ARGUMENTS;
	return(${$_[THIS]} =~ m{^(?:\t| {8})(.*)$});
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

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Customized_Settings::Dot_Cfg::Line-close -->8--#
# //revision_control
#	version 1.1.85
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"