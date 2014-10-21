package MyApp::AutomaticRifle;
use strict;
use Moose;
extends 'MyApp::Rifle';
with 'MyApp::FireAll';
with 'MyApp::MightJam';

has '+rounds' => ( default => 50 );
has 'last_burst_num' => ( is => 'rw', isa => 'Int' );

sub burst_fire {
	my ($self, $num) = @_;
	
	$self->last_burst_num($num);

	for (my $i=0; $i<$num; $i++) {
		$self->fire;
	}
}

1;
