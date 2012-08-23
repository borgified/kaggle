#!/usr/bin/env perl

use warnings;
use strict;

if(@ARGV==0){
	print "example:\n";
	print "$0 input/test.csv\n";
	exit;
}

my $file = shift @ARGV;

open(INPUT,$file) or die $!;

my $count=0;
my $actual_number;

<INPUT>; #skip the header
while(defined(my $line=<INPUT>)){
	chomp($line);
	my @number = split(/,/,$line);
	if($file =~ /train\.csv/){
		$actual_number = shift(@number);
	}
	foreach my $num (@number){

		printf("%03d",$num);
		
		$count++;

		if($count==28){
			print "\n";
			$count=0;
		}

	}
	if(defined($actual_number)){
		print "#"x41,$actual_number,"#"x42;
	}else{
		print "#"x84;
	}
	<>;
}
