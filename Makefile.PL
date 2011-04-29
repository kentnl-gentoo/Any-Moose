
use strict;
use warnings;

BEGIN { require 5.006_002; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'use Moose or Mouse modules',
  'AUTHOR' => 'Shawn M Moore <sartak@bestpractical.com>, Florian Ragwitz <rafl@debian.org>, Stevan Little <stevan@iinteractive.com>, Tokuhiro Matsuno <tokuhirom@gmail.com>, Goro Fuji <gfuji@cpan.org>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Any-Moose',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Any::Moose',
  'PREREQ_PM' => {
    'Mouse' => '0.40'
  },
  'VERSION' => '0.14',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



