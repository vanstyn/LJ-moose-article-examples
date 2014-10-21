package MyApp::CrappyRifle;
use strict;
use Moose;
extends 'MyApp::AutomaticRifle';
with 'MyApp::MightJam';

has '+jam_probability' => ( default => .5 );

1;
