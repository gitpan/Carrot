# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Continuity::Operation::Program;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Continuity::Operation::Program::ARGUMENTS = *_;
	*Carrot::Continuity::Operation::Program::PROGRAM_NAME = *0;
	*Carrot::Continuity::Operation::Program::PROCESS_ID = *$;
}
*ADX_NO_ELEMENTS = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_NO_ELEMENTS;
*ADX_FIRST_ELEMENT = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_FIRST_ELEMENT;
*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;
sub ATR_PROGRAM_NAME() { 0 };
sub ATR_FEATURES() { 1 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 1,
	[qw(ATR_PROGRAM_NAME ATR_FEATURES)]);
#--8<-- cut -->8--
return(1);
