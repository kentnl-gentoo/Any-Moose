
use strict;
use warnings;

 BEGIN { require 5.006_002; } 

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Any-Moose',
  NAME      => 'Any::Moose',
  AUTHOR    => "Shawn\ M\ Moore\ \<sartak\@bestpractical\.com\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>\,\ Stevan\ Little\ \<stevan\@iinteractive\.com\>\,\ Tokuhiro\ Matsuno\ \<tokuhirom\@gmail\.com\>\,\ Goro\ Fuji\ \<gfuji\@cpan\.org\>",
  ABSTRACT  => "use\ Moose\ or\ Mouse\ modules",
  VERSION   => '0.11',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Mouse" => '0.40',
  },
  test => {TESTS => 't/*.t'}
);

