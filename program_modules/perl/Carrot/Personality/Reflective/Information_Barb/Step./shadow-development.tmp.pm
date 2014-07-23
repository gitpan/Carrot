#--8<-- package-Carrot::Personality::Reflective::Information_Barb::Step-head -->8--#
package Carrot::Personality::Reflective::Information_Barb::Step
# /type class
# //parent_classes
#	::Productivity::Text::Placeholder::Miniplate::_Corporate
# /capability ""
{ #--8<-- package-Carrot::Personality::Reflective::Information_Barb::Step-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Productivity::Text::Placeholder::Miniplate::_Corporate
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Reflective/Information_Barb/Step./shadow-development.tmp.pm');
	} #END-1406047946

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	subject
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $subject) = @ARGUMENTS;

	$this->[ATR_SUBJECT] = $subject;
	$this->[ATR_COUNTER] = 0; # debugging, profiling - no format needed
	$this->[ATR_TIMESTAMP] = time;
	$this->[ATR_CACHE] = {};

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-used-head -->8--#
sub used
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-used-open -->8--#
	my ($this) = @ARGUMENTS;

	$this->[ATR_COUNTER] += 1;
	$this->[ATR_TIMESTAMP] = time;

	return;
} #--8<-- sub-used-close -->8--#

#--8<-- sub-formatted_path_value-head -->8--#
sub formatted_path_value
# /type method
# /effect ""
# //parameters
#	path
#	format
# //returns
#	?
{ #--8<-- sub-formatted_path_value-open -->8--#
	my ($this, $path, $format) = @ARGUMENTS;

	#--8<-- if-ANON00036-head -->8--#
	if ($path eq '_.counter')
	{ #--8<-- if-ANON00036-open -->8--#
		return($this->[ATR_COUNTER]);
	} elsif ($path eq '_.timestamp')
	{
		return(scalar(localtime($this->[ATR_TIMESTAMP])));
	} #--8<-- if-ANON00036-close -->8--#

	my $subject = $this->[ATR_SUBJECT];
	#--8<-- if-ANON00037-head -->8--#
	if (ref($subject) eq 'HASH')
	{ #--8<-- if-ANON00037-open -->8--#
		return('??') unless (exists($subject->{$path}));
#FIXME: how to evaluate $format?
		return($subject->{$path});
	} #--8<-- if-ANON00037-close -->8--#

	my $cache = $this->[ATR_CACHE];
	unless (exists($cache->{$path}))
	{
		my $last_method = IS_UNDEFINED;
		my $methods = [split('.', $path, PKY_SPLIT_RETURN_FULL_TRAIL)];
		#--8<-- foreach-ANON00038-head -->8--#
		foreach my $method (@$methods)
		{ #--8<-- foreach-ANON00038-open -->8--#
			return('??') unless ($subject->can($method));
			my $rv = $subject->$method;
			#--8<-- if-ANON00039-head -->8--#
			if (Scalar::Util::blessed($rv))
			{ #--8<-- if-ANON00039-open -->8--#
				$subject = $rv;
			} else {
				$last_method = $method;
				last;
			} #--8<-- if-ANON00039-close -->8--#
		} #--8<-- foreach-ANON00038-close -->8--#

		my $last_call = (defined($last_method)
			? $subject->can($last_method)
			: ($subject->can('value_formatted')
				// $subject->can('value')));
		$cache->{$path} = [$subject, $last_call];
	}

	my ($value, $last_call) = @{$cache->{$path}};
	return($last_call->($value, $format));
} #--8<-- sub-formatted_path_value-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Reflective::Information_Barb::Step-close -->8--#
# //revision_control
#	version 1.1.61
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"