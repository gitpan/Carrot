# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Productivity::Text::Placeholder::Template::Generic;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Productivity::Text::Placeholder::Template::Generic::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
sub SPX_PARSER_CLASS() { 1 };
sub SPX_PARSER() { 1 };
sub SPX_FORMAT() { 1 };
sub ATR_PARSER() { 0 };
sub ATR_MINIPLATES() { 1 };
sub ATR_TEXTS() { 2 };
sub ATR_CALLS() { 3 };
sub ATR_ALIASES() { 4 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 4,
	[qw(ATR_PARSER ATR_MINIPLATES ATR_TEXTS ATR_CALLS ATR_ALIASES)]);
#--8<-- cut -->8--
return(1);
