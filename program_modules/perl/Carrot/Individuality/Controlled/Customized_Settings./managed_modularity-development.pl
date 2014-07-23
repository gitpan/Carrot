# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Customized_Settings;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Customized_Settings::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*ATR_MONADS = \&Carrot::Individuality::Controlled::_Corporate::ATR_MONADS;
*ATR_MONAD_CLASS = \&Carrot::Individuality::Controlled::_Corporate::ATR_MONAD_CLASS;
sub ATR_SEARCH_PATH() { 2 };
sub ATR_CONFIG() { 3 };
sub ATR_INHERITANCE() { 4 };
$expressiveness->ordered_attributes->set_local_inheritable(2, 4,
	[qw(ATR_SEARCH_PATH ATR_CONFIG ATR_INHERITANCE)]);
#--8<-- cut -->8--
return(1);
