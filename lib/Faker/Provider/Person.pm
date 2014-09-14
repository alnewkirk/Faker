# ABSTRACT: Faker Standard Person Provider
package Faker::Provider::Person;

use Bubblegum::Class;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

sub name {
    my $self = shift;
    return $self->process_random('format_for_name');
}

sub first_name {
    my $self = shift;
    return $self->process_random('data_for_first_name');
}

sub last_name {
    my $self = shift;
    return $self->process_random('data_for_last_name');
}

1;

=encoding utf8

=head1 SYNOPSIS

    use Faker;
    use Faker::Provider::Person;

    my $person = Faker::Provider::Person->new(
        factory => Faker->new
    );

    say $person->name;

=head1 DESCRIPTION

Faker::Provider::Person is a L<Faker> provider which provides fake data for a
person. B<Note: This is an early release available for testing and feedback and
as such is subject to change.>

=method name

    $address->name;
    # John Doe
    # Jane Doe

The name method generates a random ficticious name for a person.

=method first_name

    $address->first_name;
    # John
    # Jane

The first_name method generates a random ficticious first name for a person.

=method last_name

    $address->last_name;
    # Doe
    # Doe

The last_name method generates a random ficticious last name for a person.

=cut

__DATA__

@@ format_for_name
{{first_name}} {{last_name}}

@@ data_for_first_name
John
Jane

@@ data_for_last_name
Doe
