package Carrot::Modularity::Package::Shadow;

use strict;
use warnings;

require Carrot::Modularity::Constant::Global::Result_Indices::Stat;
*RDX_STAT_MTIME = \&Carrot::Modularity::Constant::Global::Result_Indices::Stat::RDX_STAT_MTIME;

require Carrot::Modularity::Constant::Global::Boolean;
*IS_TRUE = \&Carrot::Modularity::Constant::Global::Boolean::IS_TRUE;
*IS_FALSE = \&Carrot::Modularity::Constant::Global::Boolean::IS_FALSE;

*constructor = \&Carrot::Meta::Greenhouse::Minimal_Constructor::scalar_based;
*PERL_FILE_LOADED = \&Carrot::Meta::Greenhouse::PERL_FILE_LOADED;

sub SPX_PKG_FILE() { 0 }

Carrot::Meta::Greenhouse::Shared_Subroutines::add_package_soon(
	'::Modularity::Object::Universal');
package main_ {
	*Carrot::Modularity::Package::Shadow::ARGUMENTS = *_;
	*Carrot::Modularity::Package::Shadow::PROCESS_EXIT_CODE = *?;
}

return(1);
