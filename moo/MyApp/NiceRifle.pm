package MyApp::NiceRifle;
use strict;
use Moo;
extends 'MyApp::AutomaticRifle';
with 'MyApp::MightJam';

has '+jam_probability' => ( default => sub{.001} );

1;
