use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'ex::lib::zip',
    'VERSION_FROM'	=> 'zip.pm', # finds $VERSION
    PREREQ_PM		=> { 'PerlIO::gzip' => 0.07, 'PerlIO::subfile' => 0.02},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'zip.pm', # retrieve abstract from module
       AUTHOR     => 'Nicholas Clark <nick@talking.bollo.cx>') : ()),
    'LIBS'		=> [''], # e.g., '-lm'
#    'DEFINE'		=> '-DDEBUG_LIBZIP', # e.g., '-DHAVE_SOMETHING'
	# Insert -I. if you add *.h files later:
    'INC'		=> '', # e.g., '-I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # 'OBJECT'		=> '$(O_FILES)', # link all the C files too
    # Don't install the two top level .pl files that are only build helpers
    # list PM explictly, else the default scan will spot the two .pl files.
    PM			=> {'zip.pm' => '$(INST_LIBDIR)/zip.pm'}
);
