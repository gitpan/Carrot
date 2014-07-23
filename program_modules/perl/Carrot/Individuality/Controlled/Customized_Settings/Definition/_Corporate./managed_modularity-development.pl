# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub SPX_SOURCE() { 1 };
sub ATR_STRUCTURE() { 0 };
sub ATR_SOURCE() { 1 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 1,
	[qw(ATR_STRUCTURE ATR_SOURCE)]);
#--8<-- cut -->8--
return(1);
