package Faker::Plugin::InternetIpAddressV4;

use 5.014;

use strict;
use warnings;

use registry;
use routines;

use Data::Object::Class;
use Data::Object::ClassHas;

extends 'Data::Object::Plugin';

# VERSION

# ATTRIBUTES

has 'faker' => (
  is => 'ro',
  isa => 'ConsumerOf["Faker::Maker"]',
  req => 1,
);

# METHODS

method execute() {
  my $faker = $self->faker;

  return join '.',
    $faker->random_between(0, 255),
    $faker->random_between(0, 255),
    $faker->random_between(0, 255),
    $faker->random_between(0, 255);
}

1;
