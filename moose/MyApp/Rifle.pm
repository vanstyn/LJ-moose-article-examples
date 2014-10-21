package MyApp::Rifle;
use strict;
use Moose;

use DateTime;

use Data::Dumper;

has 'rounds' => ( is => 'rw', isa => 'Int', default => 0 );

has 'fired_dt' => ( 
	is => 'rw', 
	isa => 'DateTime',
	handles => {
		last_fired => 'datetime'
	}
);


sub fire {
	my $self = shift;
	die "out of ammo!" unless ($self->rounds > 0);
	
	my $dt = DateTime->now( time_zone => 'local' );
	$self->fired_dt($dt);
	
	print "bang!\n";
	#print "fired at " . $self->fired_dt->datetime . "\n";
	
	print "fired at " . $self->last_fired . "\n";
	
	$self->rounds( $self->rounds - 1 );
}






1;
