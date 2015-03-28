use Test::More;

use_ok 'Faker';
use_ok 'Faker::Provider::en_US::Person';

my $faker    = Faker->new;
my $provider = Faker::Provider::en_US::Person->new(factory => $faker);

ok $provider->does($_) for qw(
    Faker::Role::Data
    Faker::Role::Format
    Faker::Role::Process
    Faker::Role::Random
);

ok $provider->first_name, 'first_name method ok' for 1..50;
ok $provider->last_name, 'last_name method ok' for 1..50;
ok $provider->name, 'name method ok' for 1..50;
ok $provider->name_prefix, 'name_prefix method ok' for 1..50;
ok $provider->name_suffix, 'name_suffix method ok' for 1..50;
ok $provider->username, 'username method ok' for 1..50;

ok 1 and done_testing;
