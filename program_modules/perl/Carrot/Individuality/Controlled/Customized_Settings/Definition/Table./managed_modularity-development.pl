# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Customized_Settings::Definition::Table;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Customized_Settings::Definition::Table::ARGUMENTS = *_;
}
*ADX_LAST_ELEMENT = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_LAST_ELEMENT;
*ADX_NO_ELEMENTS = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_NO_ELEMENTS;
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*ATR_STRUCTURE = \&Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate::ATR_STRUCTURE;
*ATR_SOURCE = \&Carrot::Individuality::Controlled::Customized_Settings::Definition::_Corporate::ATR_SOURCE;
sub ATR_STRUCTURE_SOURCE() { 2 };
sub ATR_COLUMNS() { 3 };
$expressiveness->ordered_attributes->set_local_inheritable(2, 3,
	[qw(ATR_STRUCTURE_SOURCE ATR_COLUMNS)]);
#--8<-- cut -->8--
return(1);
