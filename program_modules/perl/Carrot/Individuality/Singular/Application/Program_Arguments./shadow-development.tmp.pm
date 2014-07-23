#--8<-- package-Carrot::Individuality::Singular::Application::Program_Arguments-head -->8--#
package Carrot::Individuality::Singular::Application::Program_Arguments
# /type class  /instances singular
# /attribute_type ::One_Anonymous::Hash
# /capability ""
{ #--8<-- package-Carrot::Individuality::Singular::Application::Program_Arguments-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Hash');
		Carrot::Meta::Greenhouse::Package_Loader::mark_singular;
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Singular/Application/Program_Arguments./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->declare_provider;

# =--------------------------------------------------------------------------= #

#--8<-- sub-constructor-head -->8--#
sub constructor
# /type class_method
# /effect "Constructs a new instance."
# //parameters
# //returns
#	::Personality::Abstract::Instance
{ #--8<-- sub-constructor-open -->8--#
	my ($class) = @ARGUMENTS;

	my $this = bless({}, $class);
	$this->argv_as_hash(\@PROGRAM_ARGUMENTS);

	return($this);
} #--8<-- sub-constructor-close -->8--#

#--8<-- sub-argv_as_hash-head -->8--#
sub argv_as_hash
# /type method
# /effect ""
# //parameters
#	argv
# //returns
{ #--8<-- sub-argv_as_hash-open -->8--#
	my ($this) = @ARGUMENTS;

	#--8<-- foreach-ANON00047-head -->8--#
	foreach my $argument (@{$_[SPX_ARGV]})
	{ #--8<-- foreach-ANON00047-open -->8--#
		#--8<-- if-ANON00048-head -->8--#
		if ($argument !~ m,\A--,s)
		{ #--8<-- if-ANON00048-open -->8--#
			$this->{''} = [] unless (exists($this->{''}));
			push($this->{''}, $argument);

		} elsif ($argument =~ m{\A--(.+?)=(.*)\z}s)
		{
			$this->{$1} = [] unless (exists($this->{$1}));
			push($this->{$1}, $2);

		} elsif ($argument =~ m{\A--(.+?)\z}s)
		{
			$this->{$1} = [] unless (exists($this->{$1}));
			push($this->{$1}, IS_UNDEFINED);
		} #--8<-- if-ANON00048-close -->8--#
	} #--8<-- foreach-ANON00047-close -->8--#

	return;
} #--8<-- sub-argv_as_hash-close -->8--#

#--8<-- sub-provide-head -->8--#
sub provide
# /type method
# /effect "Replaces the supplied string with an instance."
# //parameters
#	key  +multiple
# //returns
{ #--8<-- sub-provide-open -->8--#
	my $this = shift(\@ARGUMENTS);

	#--8<-- foreach-ANON00049-head -->8--#
	foreach my $key (@ARGUMENTS)
	{ #--8<-- foreach-ANON00049-open -->8--#
		#--8<-- if-ANON00050-head -->8--#
		if (exists($this->{$key}))
		{ #--8<-- if-ANON00050-open -->8--#
			$key = delete($this->{$key});
		} else {
			$key = IS_UNDEFINED;
		} #--8<-- if-ANON00050-close -->8--#
	} #--8<-- foreach-ANON00049-close -->8--#
	return;
} #--8<-- sub-provide-close -->8--#

#--8<-- sub-fully_consumed-head -->8--#
sub fully_consumed
# /type method
# /effect ""
# //parameters
# //returns
#	::Personality::Abstract::Boolean
{ #--8<-- sub-fully_consumed-open -->8--#
	my () = @ARGUMENTS;
	return(scalar(keys(%{$_[THIS]})) == 0);
} #--8<-- sub-fully_consumed-close -->8--#

#--8<-- sub-keys-head -->8--#
sub keys
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-keys-open -->8--#
	my () = @ARGUMENTS;
	return(keys(%{$_[THIS]}));
} #--8<-- sub-keys-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Singular::Application::Program_Arguments-close -->8--#
# //revision_control
#	version 1.1.111
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"