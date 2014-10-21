package MyApp::FireAll;
use strict;
use Moose::Role;

requires 'fire', 'rounds';

sub fire_all {
	my $self = shift;
	$self->fire while($self->rounds > 0);
}

1;
