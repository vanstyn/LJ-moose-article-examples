package MyApp::Rifle;
use strict;

sub new {
	my ($class, %opts) = @_;
	$opts{rounds} = 0 unless ($opts{rounds});
	my $self = bless( {}, $class );
	$self->rounds($opts{rounds});
	return $self;
}

sub rounds {
	my ($self, $rounds) = @_;
	$self->{_rounds} = $rounds if (defined $rounds);
	return $self->{_rounds};
}

sub fire {
	my $self = shift;
	die "out of ammo!" unless ($self->rounds > 0);
	print "bang!\n";
	$self->rounds( $self->rounds - 1 );
}

1;
