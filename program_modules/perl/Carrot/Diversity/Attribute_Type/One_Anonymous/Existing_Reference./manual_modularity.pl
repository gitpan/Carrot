package Carrot::Diversity::Attribute_Type::One_Anonymous::Existing_Reference;
use strict;
use warnings;

sub SPX_CLASS() { 0 }
sub SPX_VALUE_REF() { 1 }

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package(
	'::Modularity::Object::Universal');
package main_ {
        *Carrot::Diversity::Attribute_Type::One_Anonymous::Existing_Reference::ARGUMENTS = *_;
}
return(1);
