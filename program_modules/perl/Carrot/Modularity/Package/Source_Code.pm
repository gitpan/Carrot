package Carrot::Modularity::Package::Source_Code
# /type class
# /attribute_type ::One_Anonymous::Scalar
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		require('Carrot/Modularity/Package/Source_Code./manual_modularity.pl');
	} #BEGIN

	require Carrot::Meta::Greenhouse::RE_Library;
	my $re_library = Carrot::Meta::Greenhouse::RE_Library->constructor;

	require Carrot::Meta::Greenhouse::File_Content;
	my $file_content = Carrot::Meta::Greenhouse::File_Content->constructor;

	$re_library->provide(
		my $re_perl_remove_data_or_end = 'perl_remove_data_or_end');

# =--------------------------------------------------------------------------= #

sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
# //returns
{
	my ($this) = @ARGUMENTS;

	$this = IS_UNDEFINED;

	return;
}

sub load
# /type method
# /effect ""
# //parameters
#	pkg_file
# //returns
{
	my ($this, $pkg_file) = @ARGUMENTS;

	return if (defined($$this));
	$pkg_file->read_into($$this);
	$$this =~ s{$re_perl_remove_data_or_end}{}o;

	return;
}

sub as_lines
# /type method
# /effect ""
# //parameters
# //returns
#	?
{
	return([split(qr{(?:\012|\015\012)}, ${$_[THIS]})]);
}


sub store_in_file
# /type method
# /effect ""
# //parameters
#	file_name
# //returns
{
	my ($this, $file_name) = @ARGUMENTS;

	$file_content->overwrite_from($file_name, $$this);
	return;
}

sub unique_matches
# /type method
# /effect ""
# //parameters
#	re
# //returns
{
	my ($this, $re) = @ARGUMENTS;

	my $symbols = [($$this =~ m{$re}sgx)];
	my $seen = {};
	my $unique = [];
	foreach my $symbol (@$symbols)
	{
		next if (exists($seen->{$symbol}));
		$seen->{$symbol} = IS_EXISTENT;
		push($unique, $symbol);
	}
	return($unique);
}

sub insert_after_modularity
# /type method
# /effect ""
# //parameters
#	code
# //returns
{
	my ($this, $code) = @ARGUMENTS;

	my $modified = ($$this =~ s
		{
			(?:\012|\015\012?)\h+
			my\h+\$expressiveness\h+=\h+Carrot::modularity;
			(?:\012|\015\012?)\K
		}
		{\t\t$code\n}sx);

	if ($modified == 0)
	{
		#FIXME: not helpful
		print(STDERR "$$this\n");
		die("Could not insert_after_modularity.");
	}
	return($modified);
}

sub has_begin_block
# /type method
# /effect ""
# //parameters
# //returns
#	?
{
	return(${$_[THIS]} =~ m{(?:\012|\015\012?)\h+BEGIN\h+\{}s);
}

my $begin_block = q{
	BEGIN {
		my $expressiveness = Carrot::modularity;
	} #BEGIN
};
sub add_begin_block_after_warnings
# /type method
# /effect ""
# //parameters
# //returns
{
	my ($this) = @ARGUMENTS;

	unless ($$this =~ s
		{use warnings[^\015\012;]*;(?:\012|\015\012?)\K}
		{$begin_block}s)
	{
		die("Could not add a begin block.\n");
	}
	return;
}

sub add_end_block_after_begin
# /type method
# /effect ""
# //parameters
#	id
#	shadow_tmp
# //returns
{
	my ($this, $id, $shadow_tmp) = @ARGUMENTS;

	my $end_block =
qq{	END { #$id
		Carrot::Modularity::Package::Shadow::compile(
			'$shadow_tmp');
	} #END-$id
};
	unless ($$this =~ s
		{\}\ \#BEGIN(?:\012|\015\012?)\K}
		{$end_block}s)
	{
		die("Could not add end block for file '$shadow_tmp'.\n");
	}
	return;
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.106
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
