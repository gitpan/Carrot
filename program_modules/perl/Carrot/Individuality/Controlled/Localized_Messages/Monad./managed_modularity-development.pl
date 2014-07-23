# Automatically created on Tue Jul 22 16:52:26 2014 GMT.
# Manual changes will get lost.
package Carrot::Individuality::Controlled::Localized_Messages::Monad;
my ($expressiveness) = @_;
use strict;
use warnings;
#--8<-- cut -->8--
package main_ {
	*Carrot::Individuality::Controlled::Localized_Messages::Monad::ARGUMENTS = *_;
}
*IS_UNDEFINED = \&Carrot::Modularity::Constant::Global::Boolean::IS_UNDEFINED;
sub ATR_MSG_DIRECTORY() { 0 };
sub ATR_PERL_ISA() { 1 };
sub ATR_PACKAGE_NAME() { 2 };
sub ATR_FILE_NAMES() { 3 };
$expressiveness->ordered_attributes->set_local_inheritable(0, 3,
	[qw(ATR_MSG_DIRECTORY ATR_PERL_ISA ATR_PACKAGE_NAME ATR_FILE_NAMES)]);
#--8<-- cut -->8--
return(1);
