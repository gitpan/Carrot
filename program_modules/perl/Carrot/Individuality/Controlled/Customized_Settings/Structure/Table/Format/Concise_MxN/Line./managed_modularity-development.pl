# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Format::Concise_MxN::Line::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*ERROR_CATEGORY_SETUP = \&Carrot::Modularity::Constant::Global::Error_Categories::Application::ERROR_CATEGORY_SETUP;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub SPX_VALUE() { 1 };
*RKY_LINE_TABLE_DELETE = \&Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants::RKY_LINE_TABLE_DELETE;
*RKY_LINE_TABLE_DEFAULTS = \&Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants::RKY_LINE_TABLE_DEFAULTS;
*RKY_LINE_TABLE_DATA = \&Carrot::Individuality::Controlled::Customized_Settings::Structure::Table::Constants::RKY_LINE_TABLE_DATA;
sub ATR_LINE() { 0 };
sub ATR_START_HEAD() { 1 };
sub ATR_END_HEAD() { 2 };
sub ATR_CUT() { 3 };
sub ATR_DATA() { 4 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 4,
	[qw(ATR_LINE ATR_START_HEAD ATR_END_HEAD ATR_CUT ATR_DATA)]);
#--8<-- cut -->8--
return(1);
