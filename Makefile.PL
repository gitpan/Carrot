use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME'		=> 'Carrot',
	'VERSION'	=> '0.0.0',
	'AUTHOR'	=> 'Winfried Trumper <pub+perl_carrot(°)wt.tuxomania.net>',
	'LICENSE'	=> 'perl',
	'PREREQ_PM'	  => {
		'parent' => 0.01,
		'mro' => 0.01,
	},
);
