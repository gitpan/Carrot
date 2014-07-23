#--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Template-head -->8--#
package Carrot::Individuality::Controlled::Localized_Messages::Template
# /type class
# /attribute_type ::Many_Declared::Ordered
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Template-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Localized_Messages/Template./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $template_class = '::Productivity::Text::Placeholder::Template::File::Plain');

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	msg_name
#	file_name       ::Personality::Valued::File::Name
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $msg_name, $file_name) = @ARGUMENTS;

	$this->[ATR_MSG_NAME] = $msg_name;
	$this->[ATR_FILE_NAME] = \$file_name;
	$this->[ATR_TEMPLATE] = IS_UNDEFINED;
	$this->[ATR_MINIPLATE] = IS_UNDEFINED;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-get_name-head -->8--#
sub get_name
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-get_name-open -->8--#
	my () = @ARGUMENTS;
	return($_[THIS][ATR_MSG_NAME]);
} #--8<-- sub-get_name-close -->8--#

#sub get_file_name
## method (<this>) public
#{
#	return(${$_[THIS][ATR_FILE_NAME]});
#}

#--8<-- sub-load_template-head -->8--#
sub load_template
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-load_template-open -->8--#
	my ($this) = @ARGUMENTS;

	my $template = $template_class->indirect_constructor(
		my $miniplate = '::Productivity::Text::Placeholder::Miniplate::Information_Barb');
	$template->set_file(${$this->[ATR_FILE_NAME]});
	$template->compile;

	$this->[ATR_TEMPLATE] = $template;
	$this->[ATR_MINIPLATE] = $miniplate;

	return;
} #--8<-- sub-load_template-close -->8--#

#--8<-- sub-filled_with-head -->8--#
sub filled_with
# /type method
# /effect ""
# //parameters
#	subject
# //returns
#	::Personality::Abstract::Text
{ #--8<-- sub-filled_with-open -->8--#
	my ($this, $subject) = @ARGUMENTS;

	$this->load_template unless (defined($this->[ATR_TEMPLATE]));
	$this->[ATR_MINIPLATE]->set_subject($subject);

	return($this->[ATR_TEMPLATE]->execute);
} #--8<-- sub-filled_with-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Localized_Messages::Template-close -->8--#
# //revision_control
#	version 1.1.54
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"