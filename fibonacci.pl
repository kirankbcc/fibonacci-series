#!/usr/bin/perl

##########################################
# FileName: fibonacci.pl
# Description: Generate first n Fibonacci numbers
#
# CreatedBy: Kiran Babu Chinnam on 18-11-2018
# ModifiedBy: Kiran Babu Chinnam on 18-11-2018
##########################################

use strict;
use warnings;

print "enter a number for fibonacci series:";
chomp(my $n = <>);

die "*** $0  Usage ***\nenter a number for fibonacci series:<n>\n" if($n !~ /\d+/);

my $nn = $n;
my $n1 = 1;
my $n2 = 1;
my $t = 1;

print "\n***result start***\n";
print "\nfibonacci series within number $n:\n";
print "$n1\t";
while ($t <= $n) {
    print "$n2\t";
    $t = $n1 + $n2;
    $n1 = $n2;
    $n2 = $t;
    $n--;
}

print "\n\nfibonacci series of $nn numbers:\n";
$n1 = 1;
$n2 = 1;

while ($nn >= 1) {
    print "$n2\t";
    $t = $n1 + $n2;
    $n1 = $n2;
    $n2 = $t;
    $nn--;
}
print "\n\n***result end***\n";
