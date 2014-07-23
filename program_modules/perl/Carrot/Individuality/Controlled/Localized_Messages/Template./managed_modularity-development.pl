# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Localized_Messages::Template;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Localized_Messages::Template::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub ATR_MSG_NAME() { 0 };
sub ATR_FILE_NAME() { 1 };
sub ATR_TEMPLATE() { 2 };
sub ATR_MINIPLATE() { 3 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 3,
	[qw(ATR_MSG_NAME ATR_FILE_NAME ATR_TEMPLATE ATR_MINIPLATE)]);
#--8<-- cut -->8--
return(1);
