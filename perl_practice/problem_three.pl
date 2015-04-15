#!/usr/bin/perl
use warnings;
use strict;
use feature 'say';

my $counter = 0;
my @prime_number;

while ($counter < 20; $counter ++){
    if ($counter % 2 != 0 ){
      my $divisor;
      int($divisor) =  $counter/2;
      while (my $i=0; $i <= $divisor; $i ++) {
            my @answers;
            push (@answers, $counter/$i);
          
      }
    }





}
