package Carrot::Modularity::Subroutine::Autoload;
use strict;
use warnings;

*IS_EXISTENT = \&Carrot::Modularity::Constant::Global::Boolean::IS_EXISTENT;

*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;

sub ATR_META_MONADS() { 0 };

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package(
	'::Diversity::Attribute_Type::Many_Declared::Ordered');

package main_ {
        *Carrot::Modularity::Subroutine::Autoload::ARGUMENTS = *_;
}
return(1);
