# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Continuity::Coordination::Episode::Source::Signals;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Continuity::Coordination::Episode::Source::Signals::OS_SIGNALS = *main::SIG{HASH};
	*Carrot::Continuity::Coordination::Episode::Source::Signals::ARGUMENTS = *_;
}
*ADX_NO_ELEMENTS = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_NO_ELEMENTS;
*IS_FALSE = \&Carrot::Modularity::Constant::Global::Boolean::IS_FALSE;
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;
*ERROR_CATEGORY_SETUP = \&Carrot::Modularity::Constant::Global::Error_Categories::Application::ERROR_CATEGORY_SETUP;
*HKY_DEX_BACKTRACK = \&Carrot::Individuality::Controlled::Localized_Messages::Constants::HKY_DEX_BACKTRACK;
sub ATR_BY_SIGNAL() { 0 };
sub ATR_RECEIVED() { 1 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 1,
	[qw(ATR_BY_SIGNAL ATR_RECEIVED)]);
#--8<-- cut -->8--
return(1);
