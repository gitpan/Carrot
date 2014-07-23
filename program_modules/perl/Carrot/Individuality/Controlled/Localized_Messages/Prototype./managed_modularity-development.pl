# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Localized_Messages::Prototype;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Localized_Messages::Prototype::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub ATR_RESOLVER() { 0 };
sub ATR_NAME() { 1 };
sub ATR_GENERAL_CONTEXT() { 2 };
sub ATR_SPECIFIC_CONTEXT() { 3 };
sub ATR_TEMPLATES() { 4 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 4,
	[qw(ATR_RESOLVER ATR_NAME ATR_GENERAL_CONTEXT ATR_SPECIFIC_CONTEXT ATR_TEMPLATES)]);
#--8<-- cut -->8--
return(1);
