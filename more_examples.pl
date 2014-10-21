#!/usr/bin/perl

use strict;
use MyApp::CrappyRifle;
use MyApp::NiceRifle;

my $rifle = MyApp::NiceRifle->new;
print "There are " . $rifle->rounds . " rounds in the rifle\n";
$rifle->burst_fire(35);
print "Now there are " . $rifle->rounds . " rounds in the rifle\n";

$rifle->fire_all;
print "Now there are " . $rifle->rounds . " rounds in the rifle\n";

print "\n\n===\n\n";

my $avg_rifle = MyApp::NiceRifle->new( jam_probability => 0.05, rounds => 13 );
print "There are " . $avg_rifle->rounds . " rounds in the average rifle\n";
$avg_rifle->fire_all;
print "Now there are " . $avg_rifle->rounds . " rounds in the average rifle\n";

print "\n\n===\n\n";

my $crap_rifle = MyApp::CrappyRifle->new;
print "There are " . $crap_rifle->rounds . " rounds in the crap rifle\n";
$crap_rifle->burst_fire(15);
print "Now there are " . $crap_rifle->rounds . " rounds in the crap rifle\n";

