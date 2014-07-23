#! /usr/bin/perl

use strict;
use warnings 'FATAL' => 'all';

sub read_file($$); #{}
sub write_file($$); #{}

my @replacements = (
#	['',
#		''],
#	[q{},
#		q{}],
);

my $code = 'sub replace($) { my $modified = 0; '
#	.join("\n", map(sprintf('$modified += ($_[0] =~ s/%s/%s/sg);', @$_), @replacements))
	.join("\n", map(sprintf('$modified += ($_[0] =~ s{%s}{%s}sg);', @$_), @replacements))
	.' return($modified); };';
eval $code;
die($@) if ($@);

foreach my $file (@ARGV) {
	read_file($file, my $buffer);

	next unless (replace($buffer));
	print $file, "\n";
	$buffer =~ s
		{(\n\# /revision \d+\.\d+\.)(\d+)}
		{$1.($2+1)}sei;

	write_file($file, $buffer);
}

exit(0);

sub SPX_NAME() { 0 }
sub SPX_CONTENT() { 1 }
sub RDX_STAT_SIZE() { 7 };
sub read_file($$) {
	my $rv = open(my $fh, '<', $_[SPX_NAME]);
	unless (defined($rv)) 
	{
		my $caller = join(', ', caller());
		die("$_[SPX_NAME]: open: $! ($caller)\n");
	}
	read($fh, $_[SPX_CONTENT], (stat($fh))[RDX_STAT_SIZE]);
	close($fh);

	return;
}

sub write_file ($$) {
	if (open(my $fh, '>', $_[SPX_NAME])) 
	{
		flock($fh, 2);
		truncate($fh, 0);
		print $fh $_[SPX_CONTENT];
		flock($fh, 8);
		close($fh);
	} else {
		die("$_[SPX_NAME]: open/w: $!\n");
	}
}
