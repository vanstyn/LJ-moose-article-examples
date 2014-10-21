package MyApp::MightJam;
use strict;
use Moo::Role;
use Type::Tiny;
use Scalar::Util qw(looks_like_number);

requires 'fire';

my $Probability = Type::Tiny->new(
	name       => 'Probability',
	constraint => sub { looks_like_number($_) && $_ >= 0 && $_ <= 1 },
	message    => sub { "$_ is not a number between 0 and 1" }
);

has 'jam_probability' => ( 
	is => 'ro', 
	isa => $Probability, 
	default => sub{.01} 
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
