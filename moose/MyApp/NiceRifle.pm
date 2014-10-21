package MyApp::NiceRifle;
use strict;
use Moose;
extends 'MyApp::AutomaticRifle';
with 'MyApp::MightJam';

has '+jam_probability' => ( default => .001 );

1;
