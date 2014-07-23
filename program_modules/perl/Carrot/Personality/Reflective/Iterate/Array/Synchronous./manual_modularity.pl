﻿package Carrot::Personality::Reflective::Iterate::Array::Synchronous;
use strict;
use warnings;

*ADX_NO_ELEMENTS = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_NO_ELEMENTS;
*ADX_FIRST_ELEMENT = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_FIRST_ELEMENT;
*ADX_LAST_ELEMENT = \&Carrot::Modularity::Constant::Global::Array_Indices::ADX_LAST_ELEMENT;

*IS_FALSE = \&Carrot::Modularity::Constant::Global::Boolean::IS_FALSE;
*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;

*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;

sub ATR_ELEMENTS1() { 0 }
sub ATR_ELEMENTS2() { 1 }
sub ATR_POSITION() { 2 }

sub SPX_ARRAY1() { 1 }
sub SPX_ARRAY2() { 2 }

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package(
	'::Diversity::Attribute_Type::Many_Declared::Ordered');

package main_ {
        *Carrot::Personality::Reflective::Iterate::Array::Synchronous::ARGUMENTS = *_;
}
return(1);
