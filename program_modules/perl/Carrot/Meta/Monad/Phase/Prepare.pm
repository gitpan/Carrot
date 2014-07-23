package Carrot::Meta::Monad::Phase::Prepare
# /type class
# //parent_classes
#	::Meta::Monad
# //parameters
#	managed_diversity  ::Personality::Abstract::Array
# /capability "Capabilities of the $meta_monad before loading."
{
	my ($managed_diversity) = @ARGUMENTS;

	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		require('Carrot/Meta/Monad/Phase/Prepare./manual_modularity.pl');
	} #BEGIN

	Carrot::Meta::Greenhouse::Package_Loader::provide_instance(
		my $pkg_patterns = '::Modularity::Package::Patterns',
		my $compilation_name = '::Meta::Greenhouse::Compilation_Name');

# =--------------------------------------------------------------------------= #

sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	that  ::Meta::Monad
# //returns
{
	my ($this, $that) = @ARGUMENTS;

	@$this = @$that;
	$this->[ATR_PRINCIPLE] = 'diversity';

	return;
}

sub _mangled_diversity
# /type method
# /effect ""
# //parameters
#	pkg_name
#	pkg_file
# //returns
{
	my ($this, $pkg_name, $pkg_file) = @ARGUMENTS;

	my $source_code = $this->source_code;
	return if ($$source_code =~ m{require\('Carrot/}s);

	my $shadow_tmp = $pkg_patterns->dot_directory_from_file($pkg_file)
		. "/shadow-$$compilation_name.tmp.pm";
	$_[SPX_PKG_FILE] = $shadow_tmp;

	if ($$source_code =~ s
		{((?:\012|\015\012?)\#(\h+))DIVERSITY(\h+\{(?:\012|\015\012?))}
		{${1}PREPARE$${3}${2}\t\$expressiveness = Carrot::diversity;\n}s)
	{
		$$source_code =~ s
			{$1\}\h+\#\KDIVERSITY(\012|\015\012?)}
			{PREPARE$1}s;
	}

	if ($$source_code =~ s
		{((?:\012|\015\012?)(\h+))MODULARITY(\h+\{(?:\012|\015\012?))}
		{${1}BEGIN${3}${2}\tmy \$expressiveness = Carrot::modularity;\n}s)
	{
		$$source_code =~ s
			{$1\}\h+\#\KMODULARITY(\012|\015\012?)}
			{BEGIN$1}s;
	}

	#NOTE: the following is manual diversity
	if ($$source_code =~ s{
			(?:\012|\015\012?)(\h+)PREPARE\h+\{(?:\012|\015\012?)
			((?:\h+[^\012\015]+(?:\012|\015\012?))+)
			\g{1}\}
		}
		{}sx)
	{
		my $block_code = $2;
		$block_code =~ s
			{Carrot::diversity\h+;}
			{\$this;}s;
		# the code might modify $_[SPX_PKG_FILE]
		#FIXME: access to $source_code too much?
		eval $block_code;
		die($@) if ($@); #simple escalation
	}
	#NOTE: from here onwards managed diversity

	$source_code = $this->source_code;
	unless ($source_code->has_begin_block)
	{
		$source_code->add_begin_block_after_warnings;
	}
	$source_code->add_end_block_after_begin(time, $shadow_tmp);

	foreach my $monad_provider (@$managed_diversity)
	{
		$monad_provider->managed_diversity(
			$this,
			$source_code);
	}

	$source_code->store_in_file($shadow_tmp);
	return;
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.337
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"