#--8<-- package-Carrot::Personality::Valued::File::Content::PID_File-head -->8--#
package Carrot::Personality::Valued::File::Content::PID_File
# /type class
# //parent_classes
#	::Personality::Valued::File::Name::Type::Regular::Content::UTF8_wBOM
# /capability ""
{ #--8<-- package-Carrot::Personality::Valued::File::Content::PID_File-open -->8--#
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		my $expressiveness = Carrot::modularity;
		$expressiveness->parent_classes->add(qw(
Carrot::Personality::Valued::File::Name::Type::Regular::Content::UTF8_wBOM));
	} #BEGIN
	END { #1406047946
		Carrot::Modularity::Package::Shadow::compile(
			'/tmp/mica_environment/program_modules/perl/Carrot/Personality/Valued/File/Content/PID_File./shadow-development.tmp.pm');
	} #END-1406047946
	use bytes;


# =--------------------------------------------------------------------------= #

#--8<-- sub-attribute_construction-head -->8--#
sub attribute_construction
# /type method
# /effect "Constructs the attribute(s) of a newly created instance."
# //parameters
#	file_name 	 ::Personality::Abstract::Raw::Text
# //returns
{ #--8<-- sub-attribute_construction-open -->8--#
	my ($this, $file_name) = @ARGUMENTS;

	$$this = $file_name;

	my $parent_directory = $this->parent_directory;
	$parent_directory->require_fatally;

	#--8<-- if-ANON00138-head -->8--#
	if ($this->exists)
	{ #--8<-- if-ANON00138-open -->8--#
		$this->require_type_regular_fatally;
#		 unless ($this->is_owned_effectively)
#		 {
#			 $file_not_owned->raise_exception(
#				 {+HKY_DEX_BACKTRACK => $file_name,
#				  'file_name' => $file_name,
#				 'uid' => $EFFECTIVE_USER_ID},
#				 ERROR_CATEGORY_SETUP);
#		 }
	} #--8<-- if-ANON00138-close -->8--#

	return;
} #--8<-- sub-attribute_construction-close -->8--#

#--8<-- sub-retrieve-head -->8--#
sub retrieve
# /type method
# /effect ""
# //parameters
# //returns
#	?
{ #--8<-- sub-retrieve-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS]->read_into(my $pid);
	return($pid);
} #--8<-- sub-retrieve-close -->8--#

#--8<-- sub-store-head -->8--#
sub store
# /type method
# /effect ""
# //parameters
#	pid
# //returns
{ #--8<-- sub-store-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS]->overwrite_from($_[SPX_PID]);
	return;
} #--8<-- sub-store-close -->8--#

#--8<-- sub-store_current-head -->8--#
sub store_current
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-store_current-open -->8--#
	my () = @ARGUMENTS;
	$_[THIS]->overwrite_from($PROCESS_ID);
	return;
} #--8<-- sub-store_current-close -->8--#

#--8<-- sub-remove-head -->8--#
sub remove
# /type method
# /effect ""
# //parameters
# //returns
{ #--8<-- sub-remove-open -->8--#
	my ($this) = @ARGUMENTS;

	#--8<-- if-ANON00139-head -->8--#
	if ($this->exists)
	{ #--8<-- if-ANON00139-open -->8--#
		unless ($this->superseded)
		{
#			$perl_unlink_failed->raise_exception(
#				{+HKY_DEX_BACKTRACK => $$this,
#				 'file_name' => $$this,
#				 'os_error' => $OS_ERROR},
#				ERROR_CATEGORY_SETUP);
		}
	} #--8<-- if-ANON00139-close -->8--#
	return;
} #--8<-- sub-remove-close -->8--#

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
} #--8<-- package-Carrot::Personality::Valued::File::Content::PID_File-close -->8--#
# //revision_control
#	version 1.1.49
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"