#!/usr/bin/perl -w
use Test::More tests => 3;
use IO::Statistic;

my $write = 0;
eval { IO::Statistic->count (undef, \$write, \*STDOUT, \*STDIN) };
ok ($@ =~ m/not supported/);

IO::Statistic->count (undef, \$write, \*STDOUT);

print "fooo";
is ($write, 4);

print "bkzlfdlkf";
is ($write, 13);
