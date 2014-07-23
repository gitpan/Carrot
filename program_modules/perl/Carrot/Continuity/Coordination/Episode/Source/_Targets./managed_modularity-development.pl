# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Continuity::Coordination::Episode::Source::_Targets;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Continuity::Coordination::Episode::Source::_Targets::ARGUMENTS = *_;
}
*ERROR_CATEGORY_SETUP = \&Carrot::Modularity::Constant::Global::Error_Categories::Application::ERROR_CATEGORY_SETUP;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub SPX_ELEMENT() { 1 };
sub ATR_ARRAY() { 0 };
sub ATR_INDEX() { 1 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 1,
	[qw(ATR_ARRAY ATR_INDEX)]);
#--8<-- cut -->8--
return(1);
