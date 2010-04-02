
use strict;
use warnings;

 BEGIN { require 5.006_002; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Any::Moose',
                       'DISTNAME' => 'Any-Moose',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Shawn M Moore <sartak@bestpractical.com>, Florian Ragwitz <rafl@debian.org>, Stevan Little <stevan@iinteractive.com>, Tokuhiro Matsuno <tokuhirom@gmail.com>, Goro Fuji <gfuji@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'use Moose or Mouse modules',
                       'EXE_FILES' => [],
                       'VERSION' => '0.12',
                       'PREREQ_PM' => {
                                        'Mouse' => '0.40'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



