package Faker::Plugin::ColorHexCode;

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
  my $number = $faker->random_between(1, 16777215);

  return '#' . sprintf('%06s', sprintf('%02x', $number));
}

1;
