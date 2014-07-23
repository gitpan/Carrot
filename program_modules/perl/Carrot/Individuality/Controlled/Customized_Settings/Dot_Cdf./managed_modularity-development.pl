# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::ARGUMENTS = *_;
	*Carrot::Individuality::Controlled::Customized_Settings::Dot_Cdf::EVAL_ERROR = *@;
}
*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*PKY_SPLIT_IGNORE_EMPTY_TRAIL = \&Carrot::Modularity::Constant::Global::Parameter::Keys::Split::PKY_SPLIT_IGNORE_EMPTY_TRAIL;
sub ATR_CLASS_NAMES() { 0 };
sub ATR_FILE_NAME() { 1 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 1,
	[qw(ATR_CLASS_NAMES ATR_FILE_NAME)]);
#--8<-- cut -->8--
return(1);
