
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    print "1..0 # SKIP these tests are for testing by the author\n";
    exit
  }
}

use strict;
use warnings;

use Test::More;

eval 'use Test::Portability::Files';
plan skip_all => 'Test::Portability::Files required for testing portability'
    if $@;

run_tests();
