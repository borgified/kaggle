#!/usr/bin/env perl

#this shows where each pixel is represented

use warnings;
use strict;

my $num=0;

foreach my $y (0..27){
	foreach my $x (0..27){
		printf("%03d",$num);
		$num++;
	}
	print "\n";
}


