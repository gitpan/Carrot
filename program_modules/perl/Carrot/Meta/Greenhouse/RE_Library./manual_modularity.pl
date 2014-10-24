﻿package Carrot::Meta::Greenhouse::RE_Library;
use strict;
use warnings;

require Carrot::Modularity::Constant::Global::Parameter::Keys::RE_Modifiers;
*RE_MOD_SAFER_UNICODE = \&Carrot::Modularity::Constant::Global::Parameter::Keys::RE_Modifiers::RE_MOD_SAFER_UNICODE;
*RE_MOD_SINGLE_LINE = \&Carrot::Modularity::Constant::Global::Parameter::Keys::RE_Modifiers::RE_MOD_SINGLE_LINE;

*constructor = \&Carrot::Meta::Greenhouse::Minimal_Constructor::scalar_based;
*PERL_FILE_LOADED = \&Carrot::Meta::Greenhouse::PERL_FILE_LOADED;

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package_soon(
	'::Modularity::Object::Universal');
Carrot::Meta::Greenhouse::Package_Loader::mark_singular;
package main_ {
        *Carrot::Meta::Greenhouse::RE_Library::ARGUMENTS = *_;

}

return(1);
