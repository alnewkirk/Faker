# ABSTRACT: Faker Localized en_US Company Provider
package Faker::Provider::en_US::Company;

use Bubblegum::Class;

extends 'Faker::Provider::Company';

# VERSION

sub buzzword_type1 {
    my $self = shift;
    return $self->process_random('data_for_buzzword_type1');
}

sub buzzword_type2 {
    my $self = shift;
    return $self->process_random('data_for_buzzword_type2');
}

sub buzzword_type3 {
    my $self = shift;
    return $self->process_random('data_for_buzzword_type3');
}

sub description {
    my $self = shift;

    my $does = $self->select_random_item([
        'Delivers',
        'Excels at',
        'Offering',
        'Best-in-class for'
    ]);

    return join ' ', $does,
        $self->jargon_prop_word,
        $self->jargon_edge_word,
        $self->jargon_buzz_word;
}

sub jargon_buzz_word {
    my $self = shift;
    return $self->process_random('data_for_jargon_buzz');
}

sub jargon_edge_word {
    my $self = shift;
    return $self->process_random('data_for_jargon_edge');
}

sub jargon_prop_word {
    my $self = shift;
    return $self->process_random('data_for_jargon_prop');
}

sub tagline {
    my $self = shift;

    return join ' ',
        $self->buzzword_type3,
        $self->buzzword_type2,
        $self->buzzword_type1;
}

1;

=encoding utf8

=head1 SYNOPSIS

    use Faker;
    use Faker::Provider::en_US::Company;

    my $company = Faker::Provider::en_US::Company->new(
        factory => Faker->new(locale => 'en_US')
    );

    say $company->tagline;

=head1 DESCRIPTION

Faker::Provider::en_US::Company is a L<Faker> provider localized under en_US,
which provides fake company data. Faker::Provider::en_US::Company inherits all
attributes and methods from L<Faker::Provider::Company> and implements the
following new ones. B<Note: This is an early release available for testing and
feedback and as such is subject to change.>

=method buzzword_type1

    $address->buzzword_type1;
    # leverage
    # utilize
    # deliver

The buzzword_type1 method generates a random business-related verb, common in
the en_US locale.

=method buzzword_type2

    $address->buzzword_type2;
    # frictionless
    # back-end
    # next-generation

The buzzword_type2 method generates a random business-related adjective, common
in the en_US locale.

=method buzzword_type3

    $address->buzzword_type3;
    # architectures
    # applications
    # networks

The buzzword_type3 method generates a random business-related noun, common in
the en_US locale.

=method description

    $address->description;
    # Offering tangible Inverse adapter
    # Excels at clear-thinking Cross-group middleware
    # Offering transitional Advanced help-desk

The description method generates a random company description based on
buzzwords, common in the en_US locale.

=method jargon_buzz_word

    $address->jargon_buzz_word;
    # synergy
    # ability
    # focusgroup

The jargon_buzz_word method generates a random business-related buzzword, common
in the en_US locale.

=method jargon_edge_word

    $address->jargon_edge_word;
    # Function-based
    # Triple-buffered
    # Future-proofed

The jargon_edge_word method generates a random business-related marketing
jargon, common in the en_US locale.

=method jargon_prop_word

    $address->jargon_prop_word;
    # explicit
    # 3rdgeneration
    # mobile

The jargon_prop_word method generates random business-related proposition,
common in the en_US locale.

=method tagline

    $address->tagline;
    # e-tailers robust incubate
    # mindshare global transition
    # paradigms visionary e-enable

The tagline method generates a random ficticious nonsense business-related
tagline, common in the en_US locale.

=cut

__DATA__

@@ format_for_name
{{last_name}} {{company_suffix}}
{{last_name}}-{{last_name}}
{{last_name}}, {{last_name}} and {{last_name}}

@@ data_for_company_suffix
Co.
Consulting
Electronics
Entertainment
Inc.
Incorporated
and Sons
LLC
Group
PLC
Ltd.
Ventures
Worldwide

@@ data_for_buzzword_type1
implement
utilize
integrate
streamline
optimize
evolve
transform
embrace
enable
orchestrate
leverage
reinvent
aggregate
architect
enhance
incentivize
morph
empower
envisioneer
monetize
harness
facilitate
seize
disintermediate
synergize
strategize
deploy
brand
grow
target
syndicate
synthesize
deliver
mesh
incubate
engage
maximize
benchmark
expedite
reintermediate
whiteboard
visualize
repurpose
innovate
scale
unleash
drive
extend
engineer
revolutionize
generate
exploit
transition
e-enable
iterate
cultivate
matrix
productize
redefine
recontextualize

@@ data_for_buzzword_type2
clicks-and-mortar
value-added
vertical
proactive
robust
revolutionary
scalable
leading-edge
innovative
intuitive
strategic
e-business
mission-critical
sticky
one-to-one
24/7
end-to-end
global
B2B
B2C
granular
frictionless
virtual
viral
dynamic
24/365
best-of-breed
killer
magnetic
bleeding-edge
web-enabled
interactive
dot-com
sexy
back-end
real-time
efficient
front-end
distributed
seamless
extensible
turn-key
world-class
open-source
cross-platform
cross-media
synergistic
bricks-and-clicks
out-of-the-box
enterprise
integrated
impactful
wireless
transparent
next-generation
cutting-edge
user-centric
visionary
customized
ubiquitous
plug-and-play
collaborative
compelling
holistic
rich

@@ data_for_buzzword_type3
synergies
web-readiness
paradigms
markets
partnerships
infrastructures
platforms
initiatives
channels
eyeballs
communities
ROI
solutions
e-tailers
e-services
action-items
portals
niches
technologies
content
vortals
supply-chains
convergence
relationships
architectures
interfaces
e-markets
e-commerce
systems
bandwidth
infomediaries
models
mindshare
deliverables
users
schemas
networks
applications
metrics
e-business
functionalities
experiences
webservices
methodologies

@@ data_for_jargon_edge
Adaptive
Advanced
Ameliorated
Assimilated
Automated
Balanced
Business-focused
Centralized
Cloned
Compatible
Configurable
Cross-group
Cross-platform
Customer-focused
Customizable
Decentralized
De-engineered
Devolved
Digitized
Distributed
Diverse
Down-sized
Enhanced
Enterprise-wide
Ergonomic
Exclusive
Expanded
Extended
Facetoface
Focused
Front-line
Fully-configurable
Function-based
Fundamental
Future-proofed
Grass-roots
Horizontal
Implemented
Innovative
Integrated
Intuitive
Inverse
Managed
Mandatory
Monitored
Multi-channelled
Multi-lateral
Multi-layered
Multi-tiered
Networked
Object-based
Open-architected
Open-source
Operative
Optimized
Optional
Organic
Organized
Persevering
Persistent
Phased
Polarised
Pre-emptive
Proactive
Profit-focused
Profound
Programmable
Progressive
Public-key
Quality-focused
Reactive
Realigned
Re-contextualized
Re-engineered
Reduced
Reverse-engineered
Right-sized
Robust
Seamless
Secured
Self-enabling
Sharable
Stand-alone
Streamlined
Switchable
Synchronised
Synergistic
Synergized
Team-oriented
Total
Triple-buffered
Universal
Up-sized
Upgradable
User-centric
User-friendly
Versatile
Virtual
Visionary
Vision-oriented

@@ data_for_jargon_prop
24hour
24/7
3rdgeneration
4thgeneration
5thgeneration
6thgeneration
actuating
analyzing
assymetric
asynchronous
attitude-oriented
background
bandwidth-monitored
bi-directional
bifurcated
bottom-line
clear-thinking
client-driven
client-server
coherent
cohesive
composite
context-sensitive
contextually-based
content-based
dedicated
demand-driven
didactic
directional
discrete
disintermediate
dynamic
eco-centric
empowering
encompassing
even-keeled
executive
explicit
exuding
fault-tolerant
foreground
fresh-thinking
full-range
global
grid-enabled
heuristic
high-level
holistic
homogeneous
human-resource
hybrid
impactful
incremental
intangible
interactive
intermediate
leadingedge
local
logistical
maximized
methodical
mission-critical
mobile
modular
motivating
multimedia
multi-state
multi-tasking
national
needs-based
neutral
nextgeneration
non-volatile
object-oriented
optimal
optimizing
radical
real-time
reciprocal
regional
responsive
scalable
secondary
solution-oriented
stable
static
systematic
systemic
system-worthy
tangible
tertiary
transitional
uniform
upward-trending
user-facing
value-added
web-enabled
well-modulated
zeroadministration
zerodefect
zerotolerance

@@ data_for_jargon_buzz
ability
access
adapter
algorithm
alliance
analyzer
application
approach
architecture
archive
artificialintelligence
array
attitude
benchmark
budgetarymanagement
capability
capacity
challenge
circuit
collaboration
complexity
concept
conglomeration
contingency
core
customerloyalty
database
data-warehouse
definition
emulation
encoding
encryption
extranet
firmware
flexibility
focusgroup
forecast
frame
framework
function
functionalities
GraphicInterface
groupware
GraphicalUserInterface
hardware
help-desk
hierarchy
hub
implementation
info-mediaries
infrastructure
initiative
installation
instructionset
interface
internetsolution
intranet
knowledgeuser
knowledgebase
localareanetwork
leverage
matrices
matrix
methodology
middleware
migration
model
moderator
monitoring
moratorium
neural-net
openarchitecture
opensystem
orchestration
paradigm
parallelism
policy
portal
pricingstructure
processimprovement
product
productivity
project
projection
protocol
securedline
service-desk
software
solution
standardization
strategy
structure
success
superstructure
support
synergy
systemengine
task-force
throughput
time-frame
toolset
utilisation
website
workforce
