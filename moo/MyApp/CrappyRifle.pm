package MyApp::CrappyRifle;
use strict;
use Moo;
extends 'MyApp::AutomaticRifle';
with 'MyApp::MightJam';

has '+jam_probability' => ( default => sub{.5} );

1;
