#--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time::Line-head -->8--#
package Carrot::Continuity::Coordination::Episode::Source::Time::Line
# /type class
# /attribute_type ::One_Anonymous::Array
# /capability ""
{ #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time::Line-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->attribute_type->assign('::One_Anonymous::Array');
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Continuity/Coordination/Episode/Source/Time/Line./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	argument  +multiple
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my $this = shift(\@ARGUMENTS);

	push(@$this, @ARGUMENTS);
	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-insert-head -->8--#
sub insert
# /type method
# /effect ""
# //parameters
#	value
# //returns
{ #--8<-- sub-insert-open -->8--#
	my ($this, $value) = @ARGUMENTS;

	my ($i, $element);
	keys(@$this); # reset 'each' iterator
	#--8<-- while-ANON00147-head -->8--#
	while (($i, $element) = each(@$this))
	{ #--8<-- while-ANON00147-open -->8--#
		last if ($element > $value);
	} #--8<-- while-ANON00147-close -->8--#

	return unless (defined($i));
	splice(@$this, $i, 0, $value);

	return;
} #--8<-- sub-insert-close -->8--#

#--8<-- sub-remove-head -->8--#
sub remove
# /type method
# /effect ""
# //parameters
#	value
# //returns
{ #--8<-- sub-remove-open -->8--#
	my ($this, $value) = @ARGUMENTS;

	my ($i, $element) = (-1, IS_UNDEFINED);

	keys(@$this); # reset 'each' iterator
	#--8<-- while-ANON00148-head -->8--#
	while (($i, $element) = each(@$this))
	{ #--8<-- while-ANON00148-open -->8--#
		last if ($element == $value);
	} #--8<-- while-ANON00148-close -->8--#

	return unless (defined($i));
	splice(@$this, $i, 1);

	return;
} #--8<-- sub-remove-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Continuity::Coordination::Episode::Source::Time::Line-close -->8--#
# //revision_control
#	version 1.1.53
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"