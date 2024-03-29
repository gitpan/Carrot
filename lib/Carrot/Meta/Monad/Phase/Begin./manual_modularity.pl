﻿package Carrot::Meta::Monad::Phase::Begin;

use strict;
use warnings;

*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;

*THIS = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THIS;
*THAT = \&Carrot::Modularity::Constant::Global::Parameter::Indices::Generic::Class::THAT;

#*ATR_PACKAGE_NAME = \&Carrot::Meta::Monad::ATR_PACKAGE_NAME;
#*ATR_PACKAGE_FILE = \&Carrot::Meta::Monad::ATR_PACKAGE_FILE;
*ATR_DOT_DIRECTORY = \&Carrot::Meta::Monad::ATR_DOT_DIRECTORY;
#*ATR_SOURCE_CODE = \&Carrot::Meta::Monad::ATR_SOURCE_CODE;
#*ATR_PARENT_CLASSES = \&Carrot::Meta::Monad::ATR_PARENT_CLASSES;
*ATR_PRINCIPLE = \&Carrot::Meta::Monad::ATR_PRINCIPLE;

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package(
	'::Meta::Monad');
package main_ {
        *Carrot::Meta::Monad::Phase::Begin::EVAL_ERROR = *@;
        *Carrot::Meta::Monad::Phase::Begin::ARGUMENTS = *_;
}

return(1);
