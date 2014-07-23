package Carrot::Personality::Valued::Network::IPv4::Address::Cdir
# /type class
# //parent_classes
#	::Personality::Valued::Network::IPv4::Address::Quads
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';


	my $syntax_re = '^(\d{0,3})\.(\d{0,3})\.(\d{0,3})\.(\d{0,3})/(\d{1,2})$';
# =--------------------------------------------------------------------------= #

sub extract_quads
# /type method
# /effect ""
# //parameters
#	value
# //returns
#	?
{
	return([$_[SPX_VALUE] =~ m{$syntax_re}so]);
}

sub is_valid_input_value
# /type method
# /effect "Verifies the parameter"
# //parameters
#	value
# //returns
#	::Personality::Abstract::Boolean
{
	my $quads = $this->extract_quads($_[SPX_VALUE]);
	return(IS_FALSE) unless (@$quads);
	unless (($quads->[0] >= 0) and ($quads->[0] <= 255)
		and ($quads->[1] >= 0) and ($quads->[1] <= 255)
		and ($quads->[2] >= 0) and ($quads->[2] <= 255)
		and ($quads->[3] >= 0) and ($quads->[3] <= 255)) {
#FIXME: replace with general exception
		die("Quad out of range.");
	}
	return(IS_TRUE);
}

sub decimal
# /type method
# /effect ""
# //parameters
#	value
# //returns
#	?
{
	my ($this) = @ARGUMENTS;

	return($this->decimal_from_quads($this->extract_quads($_[SPX_VALUE])));
}

sub decimal_from_quads($$$$)
# /type function
# /effect ""
# //parameters
#	octet1
#	octet2
#	octet3
#	octet4
# //returns
#	?
{
	return(($_[SPX_OCTET1]<<24)
		+ ($_[SPX_OCTET2]<<16)
		+ ($_[SPX_OCTET3]<<8)
		+ $_[SPX_OCTET4]);
}

sub decimal_netmask_from_width($)
# /type function
# /effect ""
# //parameters
#	width
# //returns
#	::Personality::Abstract::Number
{
	my $width = (32 - $_[SPX_WIDTH]);
	return((((2**32-1) >> $width) << $width));
}

sub is_within_network_decimal($$)
# /type function
# /effect ""
# //parameters
#	ipv4_network
#	ipv4_netmark
# //returns
#	::Personality::Abstract::Boolean
{
	return($_[SPX_IPV4_NETWORK] == (${$_[THIS]} & $_[SPX_IPV4_NETMASK]));
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.102
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
