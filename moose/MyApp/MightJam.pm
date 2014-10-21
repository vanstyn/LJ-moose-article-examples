package MyApp::MightJam;
use strict;
use Moose::Role;
use Moose::Util::TypeConstraints;

requires 'fire';

subtype 'Probability' => (
	as 'Num',
	where { $_ >= 0 && $_ <= 1 },
	message { "$_ is not a number between 0 and 1" }
);

has 'jam_probability' => ( 
	is => 'ro', 
	isa => 'Probability', 
	default => .01 
);

sub roll_dice {
	my $self = shift;
	return 1 if ( rand(1) < $self->jam_probability );
	return 0;
}

before 'fire' => sub {
	my $self = shift;
	die "Jammed!!!\n" if ($self->roll_dice);
};

1;
