# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Personality::Reflective::Information_Barb::Step;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Personality::Reflective::Information_Barb::Step::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*PKY_SPLIT_RETURN_FULL_TRAIL = \&Carrot::Modularity::Constant::Global::Parameter::Keys::Split::PKY_SPLIT_RETURN_FULL_TRAIL;
sub ATR_SUBJECT() { 0 };
sub ATR_COUNTER() { 1 };
sub ATR_TIMESTAMP() { 2 };
sub ATR_CACHE() { 3 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 3,
	[qw(ATR_SUBJECT ATR_COUNTER ATR_TIMESTAMP ATR_CACHE)]);
#--8<-- cut -->8--
return(1);
