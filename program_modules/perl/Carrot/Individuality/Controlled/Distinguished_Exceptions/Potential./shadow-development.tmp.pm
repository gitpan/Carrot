#--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Potential-head -->8--#
package Carrot::Individuality::Controlled::Distinguished_Exceptions::Potential
# /type class
# //parent_classes
#	::Individuality::Controlled::Localized_Messages::Prototype
# /capability ""
{ #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Potential-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Individuality::Controlled::Localized_Messages::Prototype
	Carrot::Diversity::Attribute_Type::Many_Declared::Ordered));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Individuality/Controlled/Distinguished_Exceptions/Potential./shadow-development.tmp.pm');
	} #END-1406047946

	my $expressiveness = Carrot::individuality;
	$expressiveness->provide(
#		my $logging_channel = '::Individuality::Singular::Application::Logging_Channel',
		my $fatal_error = '::Individuality::Singular::Execution::Fatal_Error');

	$expressiveness->package_resolver->provide(
		my $policy_class = '[=project_pkg=]::Details_Policy');

#	$logging_channel->provide(
#		my $exception_log = 'exception_log');

	my $max_trace_level = 1_000;

# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	resolver
#	msg_name
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $resolver, $msg_name) = @ARGUMENTS;

	$this->superseded($resolver, $msg_name);
	$this->[ATR_POLICY] = $policy_class->indirect_constructor;

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-raise_exception-head -->8--#
sub raise_exception
# /type method
# /effect ""
# //parameters
#	details
#	category
# //returns
#	?
{ #--8<-- sub-raise_exception-open -->8--#
	my ($this, $details, $category) = @ARGUMENTS;
	my $caller = [caller];

	die unless (ref($details) eq 'HASH'); #	$details //= {};

#	$details->{'caller_package'} //= $caller->[RDX_CALLER_PACKAGE];
#	$details->{'caller_file'} //= $caller->[RDX_CALLER_FILE];
#	$details->{'caller_line'} //= $caller->[RDX_CALLER_LINE];
	#--8<-- if-ANON00042-head -->8--#
	if (exists($details->{+HKY_DEX_BACKTRACK}))
	{ #--8<-- if-ANON00042-open -->8--#
#FIXME: format information
#FIXME: avoid recursive processing
		$this->backtrack_argument(
			delete($details->{+HKY_DEX_BACKTRACK}), $details);
	} #--8<-- if-ANON00042-close -->8--#

	$this->[ATR_SPECIFIC_CONTEXT] = $details;

	$fatal_error->trigger(
		$caller,
		$this,
		$category);
} #--8<-- sub-raise_exception-close -->8--#

#--8<-- sub-backtrack_argument-head -->8--#
sub backtrack_argument
# /type method
# /effect ""
# //parameters
#	candidate
#	details
# //returns
{ #--8<-- sub-backtrack_argument-open -->8--#
	my ($this, $candidate, $details) = @ARGUMENTS;

	$details->{'traced_frame_argument'} = $candidate;

	my $depth = 1;
	#--8<-- while-ANON00043-head -->8--#
	while ($depth < $max_trace_level)
	{ #--8<-- while-ANON00043-open -->8--#
		$depth += 1;
		my $caller;
		my $subroutine_args;
		package DB {
			our @args;
			$caller = [caller($depth)];
			$subroutine_args = [@args];
		}
		last if ($#$caller == ADX_NO_ELEMENTS);

		my $position = ADX_NO_ELEMENTS;
		my $found = IS_FALSE;
		#--8<-- foreach-ANON00044-head -->8--#
		foreach my $argument (@$subroutine_args)
		{ #--8<-- foreach-ANON00044-open -->8--#
			$position++;
			#--8<-- if-ANON00045-head -->8--#
			if (defined($candidate))
			{ #--8<-- if-ANON00045-open -->8--#
				next unless (defined($argument));
				next unless ("$argument" eq $candidate);
			} else {
				next if (defined($argument));
			} #--8<-- if-ANON00045-close -->8--#
			$found = IS_TRUE;
			last;
		} #--8<-- foreach-ANON00044-close -->8--#
		last unless ($found);
		my $key = (defined($subroutine_args->[ADX_FIRST_ELEMENT])
			? "$subroutine_args->[ADX_FIRST_ELEMENT]"
			: '');
		$details->{'traced_frame_level'} = $depth;
		$details->{'traced_frame_caller'} = $caller;
		$details->{'traced_frame_position'} = $position;
		$details->{'traced_frame_key'} = $key;
	} #--8<-- while-ANON00043-close -->8--#

	my $call_frame = {
		'traced_frame_level' => -1,
		'traced_frame_caller' => ['', '', -1, ''],,
		'traced_frame_position' => ADX_NO_ELEMENTS,
		'traced_frame_key' => undef};

	#--8<-- if-ANON00046-head -->8--#
	if ($#{$call_frame->{'traced_frame_caller'}} == ADX_NO_ELEMENTS)
	{ #--8<-- if-ANON00046-open -->8--#
		$details->{'traced_frame_level'} = -1;
		$details->{'traced_frame_caller'} = ['', '', -1, ''];
		$details->{'traced_frame_position'} = ADX_NO_ELEMENTS;
		$details->{'traced_frame_key'} = IS_UNDEFINED;
	} else {
		$details->{'traced_frame_caller'}[RDX_CALLER_SUB_NAME] =~ s{^.*::}{}s;
	} #--8<-- if-ANON00046-close -->8--#

	return;
} #--8<-- sub-backtrack_argument-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Individuality::Controlled::Distinguished_Exceptions::Potential-close -->8--#