# ABSTRACT: Faker Standard Phone Number Provider
package Faker::Provider::PhoneNumber;

use Bubblegum::Class;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

sub number {
    my $self = shift;
    return $self->format_number_markers(
        $self->process_random('format_for_number')
    );
}

1;

=encoding utf8

=head1 SYNOPSIS

    use Faker;
    use Faker::Provider::PhoneNumber;

    my $phone = Faker::Provider::PhoneNumber->new(
        factory => Faker->new
    );

    say $phone->number;

=head1 DESCRIPTION

Faker::Provider::Person is a L<Faker> provider which provides fake phone data.
B<Note: This is an early release available for testing and feedback and as such
is subject to change.>

=method number

    $address->number;
    # (882) 119-2218
    # (131) 225-5649
    # 378 916 6044

The number method generates a random ficticious telephone number.

=cut

__DATA__

@@ format_for_number
###-###-####
### ### ####
(###) ###-####
