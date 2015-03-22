#Prject Euler work. Problem One Solved.

#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;


my $total;
my $fizzpoint;
sub fizzbuzz{
    $fizzpoint = shift;
    for (my $i = 0; $i <= $fizzpoint; $i ++) {
        if ($i%3 == 0){
         $total += $i;
        }
        else{
        	        if ($i%5 == 0){
         $total += $i;
        }
        }

    }
    print "The answer is ".$total;
}
1;