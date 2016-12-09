#!/bin/env perl
use v5.24;
use strict;
use warnings;

while(1){
    print "Enter your word: ";
    my $word = <>;
    # say "";
    chomp($word);

    my $website = `curl http://www.spanishdict.com/translate/$word --fail --silent`;
    my @outputs = $website =~ m#/([a-z\s]*)">\1</a>#g;
    foreach my $word (@outputs){
        print $word." ";
    }
    say "";
    say "";
}
