#!/usr/bin/perl

use MyApp::Rifle;
use strict;

my $rifle = MyApp::Rifle->new( rounds => 5 );
print "There are " . $rifle->rounds . " rounds in the rifle\n";
$rifle->fire;
print "Now there are " . $rifle->rounds . " rounds in the rifle\n";
