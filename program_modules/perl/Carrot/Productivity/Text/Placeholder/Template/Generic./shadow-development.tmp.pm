#--8<-- package-Carrot::Productivity::Text::Placeholder::Template::Generic-head -->8--#
package Carrot::Productivity::Text::Placeholder::Template::Generic
# /type class
# /attribute_type ::Many_Declared::Ordered
# /project_entry ::Productivity::Text::Placeholder
# /capability ""
{ #--8<-- package-Carrot::Productivity::Text::Placeholder::Template::Generic-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->class_names->provide(
		my $project_entry = q{Carrot::Productivity::Text::Placeholder});
		$expressiveness->parent_classes->attribute_type->assign('::Many_Declared::Ordered');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Productivity/Text/Placeholder/Template/Generic./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->package_resolver->provide(
		my $placeholder_class = '::Productivity::Text::Placeholder');
	$expressiveness->provide(
		my $class_names = '::Individuality::Controlled::Class_Names');
	$class_names->provide(
		my $parser_class = '[=project_pkg=]::Parser::RE');

	my $default_parser = $parser_class->indirect_constructor;

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# /parameters *
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my $this = shift(\@ARGUMENTS); # my $pkg_names = \@ARGUMENTS;

	$this->[ATR_PARSER] = IS_UNDEFINED;
	$this->[ATR_MINIPLATES] = [];
	$this->[ATR_TEXTS] = [];
	$this->[ATR_CALLS] = [];
	$this->[ATR_ALIASES] = [];

	$this->provide_miniplate(@ARGUMENTS);
#	$this->provide_miniplate($pkg_names);

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-provide_parser_class-head -->8--#
sub provide_parser_class
# /type method
# /effect ""
# //parameters
#	parser_class
# //returns
{ #--8<-- sub-provide_parser_class-open -->8--#
	my () = @ARGUMENTS;
	$class_names->provide($_[SPX_PARSER_CLASS]);
	return;
} #--8<-- sub-provide_parser_class-close -->8--#

#--8<-- sub-create_parser-head -->8--#
sub create_parser
# /type method
# /effect ""
# /parameters *
# //returns
{ #--8<-- sub-create_parser-open -->8--#
	my $this = shift(\@ARGUMENTS);

	# NOTE: this can't easily become provide_parser() because of
	# the parser specific arguments - is that used at all?
	$this->[ATR_PARSER] = $parser_class->indirect_constructor(@ARGUMENTS);
	return($this->[ATR_PARSER]);
} #--8<-- sub-create_parser-close -->8--#

#--8<-- sub-set_parser-head -->8--#
sub set_parser
# /type method
# /effect ""
# //parameters
#	parser
# //returns
{ #--8<-- sub-set_parser-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS][ATR_PARSER] = $_[SPX_PARSER];
	return;
} #--8<-- sub-set_parser-close -->8--#

#--8<-- sub-provide_miniplate-head -->8--#
sub provide_miniplate
# /type method
# /effect ""
# //parameters
#	pkg_names  +multiple ::Personality::Abstract::Text
# //returns
{ #--8<-- sub-provide_miniplate-open -->8--#
	my $this = shift(\@ARGUMENTS);
#	my $pkg_names = \@ARGUMENTS;

	$class_names->provide(@ARGUMENTS);
	#--8<-- foreach-ANON00027-head -->8--#
	foreach my $pkg_name (@ARGUMENTS)
	{ #--8<-- foreach-ANON00027-open -->8--#
		next if (Scalar::Util::readonly($pkg_name));
#		next unless (defined($pkg_name)); #FIXME: leftover?
		$pkg_name = $pkg_name->indirect_constructor;
		push($this->[ATR_MINIPLATES], $pkg_name);
	} #--8<-- foreach-ANON00027-close -->8--#
	return;
} #--8<-- sub-provide_miniplate-close -->8--#

#--8<-- sub-find_call-head -->8--#
sub find_call
# /type method
# /effect ""
# //parameters
#	symbol
# //returns
#	?
{ #--8<-- sub-find_call-open -->8--#
	my ($this, $symbol) = @ARGUMENTS;

	my $call = IS_UNDEFINED;
	#--8<-- foreach-ANON00028-head -->8--#
	foreach my $miniplate (@{$this->[ATR_MINIPLATES]})
	{ #--8<-- foreach-ANON00028-open -->8--#
		$call = $miniplate->find_call($symbol);
		last if (defined($call));
	} #--8<-- foreach-ANON00028-close -->8--#
	unless (defined($call))
	{
		die("No miniplate defines symbol '$symbol'.");
	}
	return($call);
} #--8<-- sub-find_call-close -->8--#

#--8<-- sub-compile-head -->8--#
sub compile
# /type method
# /effect ""
# //parameters
#	format
# //returns
{ #--8<-- sub-compile-open -->8--#
	my ($this) = @ARGUMENTS;

	unless (defined($this->[ATR_PARSER]))
	{
		$this->[ATR_PARSER] = $default_parser;
	}

	my $parts = $this->[ATR_PARSER]->split_text($_[SPX_FORMAT]);

	my $texts = [];
	my $calls = [];
	my $aliases = [];
	my $placeholders = {};
	#--8<-- foreach-ANON00029-head -->8--#
	foreach my $part (@$parts)
	{ #--8<-- foreach-ANON00029-open -->8--#
		my ($text, $placeholder) = @$part;

		push($texts, $text, '');
		last if ($placeholder eq '');

		#--8<-- if-ANON00030-head -->8--#
		if (exists($placeholders->{$placeholder}))
		{ #--8<-- if-ANON00030-open -->8--#
			push($aliases, [$placeholders->{$placeholder}, $#$texts]);
			next;
		} #--8<-- if-ANON00030-close -->8--#

		$placeholders->{$placeholder} = $#$texts;
		my $call = $this->find_call($placeholder);
		next unless (defined($call));
		push($calls, [$call, $#$texts]);
	} #--8<-- foreach-ANON00029-close -->8--#

	$this->[ATR_TEXTS] = $texts;
	$this->[ATR_CALLS] = $calls;
	$this->[ATR_ALIASES] = $aliases;

	return;
} #--8<-- sub-compile-close -->8--#

#--8<-- sub-execute-head -->8--#
sub execute
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-execute-open -->8--#
	my ($this) = @ARGUMENTS;

	my $texts = $this->[ATR_TEXTS];
	#--8<-- foreach-ANON00031-head -->8--#
	foreach my $call_position (@{$this->[ATR_CALLS]})
	{ #--8<-- foreach-ANON00031-open -->8--#
		my ($call, $offset) = @$call_position;
		my ($method_ref, $arguments) = @$call;
		$texts->[$offset] = $method_ref->(@$arguments);
	} #--8<-- foreach-ANON00031-close -->8--#
	#--8<-- foreach-ANON00032-head -->8--#
	foreach my $alias (@{$this->[ATR_ALIASES]})
	{ #--8<-- foreach-ANON00032-open -->8--#
		my ($master, $offset) = @$alias;
		$texts->[$offset] = $texts->[$master];

	} #--8<-- foreach-ANON00032-close -->8--#
	my $text = join('', @$texts);
#	foreach my $call (@{$this->[ATR_CALLS]}, @{$this->[ATR_ALIASES]})
#	{
#		my (undef, $offset) = @$call;
#		$texts->[$offset] = '';
#	}

	return(\$text);
} #--8<-- sub-execute-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Productivity::Text::Placeholder::Template::Generic-close -->8--#
# //revision_control
#	version 1.1.91
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"