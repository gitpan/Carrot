package Carrot::Modularity::Package::Patterns
# /type class
# /capability ""
{
	use strict;
	use warnings 'FATAL' => 'all';

	BEGIN {
		require('Carrot/Modularity/Package/Patterns./manual_modularity.pl');
	} #BEGIN

	require Carrot::Modularity::Package::Tabulator;
	my $pkg_tabulator = Carrot::Modularity::Package::Tabulator->constructor;

	require Carrot::Meta::Greenhouse::RE_Library;
	my $re_library = Carrot::Meta::Greenhouse::RE_Library->constructor;

	$re_library->provide(
		my $re_perl_pkg_n_sub = 'perl_pkg_n_sub',
		my $re_perl_pkg_last_element = 'perl_pkg_last_element',
		my $re_carrot_dot_directory = 'carrot_dot_directory');

	my $mappings = {};

# =--------------------------------------------------------------------------= #

sub is_relative_package_name
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	::Personality::Abstract::Boolean
{
	return(substr($_[SPX_PKG_NAME], 0, 2) eq PERL_PACKAGE_DELIMITER);
}

sub qualify_package_name
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
#	pkg_anchor
# //returns
{
	if ($_[THIS]->is_relative_package_name($_[SPX_PKG_NAME]))
	{
		$_[SPX_PKG_NAME] = $_[SPX_PKG_ANCHOR].$_[SPX_PKG_NAME];
	}
	return;
}

sub is_package_anchor
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	::Personality::Abstract::Boolean
{
	return(substr($_[SPX_PKG_NAME], -2, 2) eq PERL_PACKAGE_DELIMITER);
}

sub is_package_level_expander
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	::Personality::Abstract::Boolean
{
	return(substr($_[SPX_PKG_NAME], -3, 3) eq '::*');
}

sub is_package_hierarchy_expander
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	::Personality::Abstract::Boolean
{
	return(substr($_[SPX_PKG_NAME], -4, 4) eq '::**');
}

sub package_as_file_name
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	?
{
	return(($_[SPX_PKG_NAME] =~ s{::}{/}sgr).'.pm');
}

sub file_as_package_name
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
# //returns
#	?
{
	my $pkg_name = ($_[SPX_PKG_NAME] =~ s{/}{::}sgr);
	$pkg_name =~ s{\.\w+$}{}s;
	return($pkg_name);
}

sub dot_directory_from_file
# /type method
# /effect ""
# //parameters
#	pkg_file        ::Personality::Abstract::Text
# //returns
#	?
{
	return((($_[SPX_PKG_FILE] =~ m{$re_carrot_dot_directory}so)
			? $1
			: $_[SPX_PKG_FILE])
		.'.');
}

sub pkg_n_sub
# /type method
# /effect ""
# //parameters
#	pkg_file        ::Personality::Abstract::Text
# //returns
#	?
{
	return($_[SPX_PKG_FILE] =~ m{$re_perl_pkg_n_sub}o);
}

sub resolve_placeholders
# /type method
# /effect ""
# //parameters
#	pkg_name        ::Personality::Abstract::Text
#	calling_pkg
# //returns
#	?
{
	my ($this, $pkg_name, $calling_pkg) = @ARGUMENTS;

	my $modified = IS_FALSE;
	$modified |= ($pkg_name =~ s{\[=perl_os_name=\]}{$OS_NAME}s);
	$modified |= ($pkg_name =~ s{\[=perl_version=\]}{$PERL_VERSION}s);

	if ($pkg_name =~ s{^\[=(this|parent|project|component)_pkg=\](::|$)}{}s)
	{
		my ($keyword, $end) = ($1, $2);
		my $value = $calling_pkg;
		if ($keyword eq 'this')
		{

		} elsif ($keyword eq 'parent')
		{
			$value =~ s{$re_perl_pkg_last_element}{}o;

		} elsif (($keyword eq 'project') or ($keyword eq 'component'))
		{
			$value = $pkg_tabulator
				->by_pkg_name($calling_pkg, $keyword);

#		} else {
# this is an assertion and doesn't justify $translated_errors
#			die("Internal error: the regexp matched but no case for '$keyword'.")

		}
		$pkg_name = "$value$end$pkg_name";
		$modified = IS_TRUE;

#	} elsif ($pkg_name =~ s{^\[=matching_pkg=\]::([^:]+)}{::$1}s)
#	{
#		my $rohcna = $1;
#		my $value = $calling_pkg;
#		if ($value =~ s{(^|::)$rohcna(::.*|$)}{})
#		{
#			if (length($value))
#			{
#				$pkg_name = "$value$pkg_name";
#			}
#		}
#		$modified = IS_TRUE;
	}

	# looks odd to have it here, but maybe the best compromise
	if (exists($mappings->{$pkg_name}))
	{
		$pkg_name = $mappings->{$pkg_name};
		$modified = IS_TRUE;
	}

	$_[SPX_PKG_NAME] = $pkg_name if ($modified);
	return($modified);
}

sub dot_ini_got_association
# /type class_method
# /effect "Processes an association from an .ini file."
# //parameters
#	name
#	value
# //returns
{
	my ($class, $name, $value) = @ARGUMENTS;

	$mappings->{$name} = $value;

	return;
}

# =--------------------------------------------------------------------------= #

	return(PERL_FILE_LOADED);
}
# //revision_control
#	version 1.1.176
#	branch main
#	maturity alpha
# /license MPL-2.0 (Mozilla Public License v2.0)
# /copyright "(C) 2009-2014 Winfried Trümper <win@carrot-programming.org>"
