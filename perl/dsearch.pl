#!/usr/bin/perl
#assuming /usr/share/dict/words
#searches with a regex
use strict;

my $key = shift @ARGV;
open DICT, "/usr/share/dict/words"
    or open DICT, "/usr/dict/words/" 
    or warn "Cannot load dictionary!\n";
my @words = <DICT>;
foreach (@words) {
    if (/$key/g) {
	print;
    }
} 
close DICT;
