#!/usr/bin/perl
use warnings;
use strict;
use feature 'say';

my $number;
my $answer;
my @fib_numbers = ("2");
my @counter = ("1","2");

    while ($counter[-1]< 4_000_000){
        push (@counter, $counter[-2] + $counter[-1]);
        my $even_number = $counter[-2] + $counter[-1];
        if ($even_number % 2 == 0){
            push (@fib_numbers, $even_number);
        }
    }
  if ($fib_numbers[-1]>4_000_000){
   pop(@fib_numbers);
  }
    $answer += $_ for @fib_numbers;
say $answer;
say "2%3";
