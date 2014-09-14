# ABSTRACT: Faker Standard Company Provider
package Faker::Provider::Company;

use Bubblegum::Class;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

sub name {
    my $self = shift;
    return $self->process_random('format_for_name');
}

sub name_suffix {
    my $self = shift;
    return $self->process_random('data_for_name_suffix');
}

1;

=encoding utf8

=head1 SYNOPSIS

    use Faker;
    use Faker::Provider::Company;

    my $company = Faker::Provider::Company->new(
        factory => Faker->new
    );

    say $company->name;

=head1 DESCRIPTION

Faker::Provider::Company is a L<Faker> provider which provides fake company
data. B<Note: This is an early release available for testing and feedback and as
such is subject to change.>

=method name

    $address->name;
    # Padberg Co.
    # Russel Ltd.
    # Murazik Co.

The name method generates a random ficticious company name.

=method name_suffix

    $address->name_suffix;
    # Co.
    # Inc.
    # Co.

The name_suffix method generates a random ficticious company name suffix.

=cut

__DATA__

@@ format_for_name
{{Person#last_name}} {{name_suffix}}

@@ data_for_name_suffix
Pty.
Ltd.
Inc.
Co.
