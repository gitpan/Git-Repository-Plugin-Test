
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Helper methods for testing interactions with Git",
  "AUTHOR" => "Nathaniel G. Nutter <nnutter\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Git-Repository-Plugin-Test",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Git::Repository::Plugin::Test",
  "PREREQ_PM" => {
    "Carp" => 0,
    "File::Copy" => 0,
    "File::Spec" => 0,
    "File::Temp" => 0,
    "Git::Repository" => 0,
    "Test::More" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.003",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "File::Copy" => 0,
  "File::Spec" => 0,
  "File::Temp" => 0,
  "Git::Repository" => 0,
  "Test::More" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



