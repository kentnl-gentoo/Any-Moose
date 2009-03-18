
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Any-Moose',
  NAME      => 'Any::Moose',
  AUTHOR    => 'Shawn\ M\ Moore\ \<sartak\@bestpractical\.com\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>\,\ Stevan\ Little\ \<stevan\@iinteractive\.com\>\,\ Tokuhiro\ Matsuno\ \<tokuhirom\@gmail\.com\>',
  ABSTRACT  => 'use Moose or Mouse modules',
  VERSION   => '0.06',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Mouse" => '0.15',
  },
);
