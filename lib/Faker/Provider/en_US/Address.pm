package Faker::Provider::en_US::Address;

use Bubblegum::Class;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

extends 'Faker::Provider::Address';

sub city_prefix {
    my $self = shift;
    return $self->process_random('data_for_city_prefix');
}

sub country_name {
    my $self = shift;
    return $self->process_random('data_for_country_name');
}

sub line2 {
    my $self = shift;
    return $self->format_number_markers(
        $self->format_line_markers(
            $self->process_random('format_for_line2')
        )
    );
}

sub state_abbr {
    my $self = shift;
    return $self->format_line_markers(
        $self->process_random('data_for_state_abbr')
    );
}

sub state_name {
    my $self = shift;
    return $self->format_line_markers(
        $self->process_random('data_for_state_name')
    );
}

1;

__DATA__

@@ format_for_address_data
{{street_address}}\n{{city_name}}, {{state_abbr}} {{postal_code}}

@@ format_for_city_name
{{city_prefix}} {{Person#first_name}}{{city_suffix}}
{{city_prefix}} {{Person#first_name}}
{{Person#first_name}}{{city_suffix}}
{{Person#last_name}}{{city_suffix}}

@@ format_for_line2
Apt. ###
Suite ###

@@ format_for_lines
{{line1}}, {{city_name}}, {{postal_code}}
{{line1}}, {{city_name}}, {{state_abbr}} {{postal_code}}
{{line1}}, {{line2}}, {{city_name}}, {{postal_code}}
{{line1}}\n{{line2}}\n{{city_name}}, {{postal_code}}
{{line1}}\n{{line2}}\n{{city_name}}, {{state_abbr}} {{postal_code}}

@@ format_for_street_name
{{Person#first_name}} {{street_suffix}}
{{Person#last_name}} {{street_suffix}}

@@ format_for_street_address
{{number}} {{street_name}}
{{number}} {{street_name}} {{line2}}

@@ data_for_city_prefix
North
East
West
South
New
Lake
Port

@@ data_for_city_suffix
town
ton
land
ville
berg
burgh
borough
bury
view
port
mouth
stad
furt
chester
mouth
fort
haven
side
shire

@@ data_for_country_name
Afghanistan
Albania
Algeria
American Samoa
Andorra
Angola
Anguilla
Antarctica
Antigua and Barbuda
Argentina
Armenia
Aruba
Australia
Austria
Azerbaijan
Bahamas
Bahrain
Bangladesh
Barbados
Belarus
Belgium
Belize
Benin
Bermuda
Bhutan
Bolivia
Bosnia and Herzegovina
Botswana
Bouvet Island
Brazil
British Indian Ocean Territory
British Virgin Islands
Brunei Darussalam
Bulgaria
Burkina Faso
Burundi
Cambodia
Cameroon
Canada
Cape Verde
Cayman Islands
Central African Republic
Chad
Chile
China
Christmas Island
Cocos Islands
Colombia
Comoros
Congo
Cook Islands
Costa Rica
Cote d'Ivoire
Croatia
Cuba
Cyprus
Czech Republic
Denmark
Djibouti
Dominica
Dominican Republic
Ecuador
Egypt
El Salvador
Equatorial Guinea
Eritrea
Estonia
Ethiopia
Faroe Islands
Falkland Islands
Fiji
Finland
France
French Guiana
French Polynesia
French Southern Territories
Gabon
Gambia
Georgia
Germany
Ghana
Gibraltar
Greece
Greenland
Grenada
Guadeloupe
Guam
Guatemala
Guernsey
Guinea
Guinea-Bissau
Guyana
Haiti
Heard Island and McDonald Islands
Holy See
Honduras
Hong Kong
Hungary
Iceland
India
Indonesia
Iran
Iraq
Ireland
Isle of Man
Israel
Italy
Jamaica
Japan
Jersey
Jordan
Kazakhstan
Kenya
Kiribati
Korea
Korea
Kuwait
Kyrgyz Republic
Lao People's Democratic Republic
Latvia
Lebanon
Lesotho
Liberia
Libyan Arab Jamahiriya
Liechtenstein
Lithuania
Luxembourg
Macao
Macedonia
Madagascar
Malawi
Malaysia
Maldives
Mali
Malta
Marshall Islands
Martinique
Mauritania
Mauritius
Mayotte
Mexico
Micronesia
Moldova
Monaco
Mongolia
Montenegro
Montserrat
Morocco
Mozambique
Myanmar
Namibia
Nauru
Nepal
Netherlands Antilles
Netherlands
New Caledonia
New Zealand
Nicaragua
Niger
Nigeria
Niue
Norfolk Island
Northern Mariana Islands
Norway
Oman
Pakistan
Palau
Palestinian Territory
Panama
Papua New Guinea
Paraguay
Peru
Philippines
Pitcairn Islands
Poland
Portugal
Puerto Rico
Qatar
Reunion
Romania
Russian Federation
Rwanda
Saint Barthelemy
Saint Helena
Saint Kitts and Nevis
Saint Lucia
Saint Martin
Saint Pierre and Miquelon
Saint Vincent and the Grenadines
Samoa
San Marino
Sao Tome and Principe
Saudi Arabia
Senegal
Serbia
Seychelles
Sierra Leone
Singapore
Slovakia (Slovak Republic)
Slovenia
Solomon Islands
Somalia
South Africa
South Georgia and the South Sandwich Islands
Spain
Sri Lanka
Sudan
Suriname
Svalbard & Jan Mayen Islands
Swaziland
Sweden
Switzerland
Syrian Arab Republic
Taiwan
Tajikistan
Tanzania
Thailand
Timor-Leste
Togo
Tokelau
Tonga
Trinidad and Tobago
Tunisia
Turkey
Turkmenistan
Turks and Caicos Islands
Tuvalu
Uganda
Ukraine
United Arab Emirates
United Kingdom
United States of America
United States Minor Outlying Islands
United States Virgin Islands
Uruguay
Uzbekistan
Vanuatu
Venezuela
Vietnam
Wallis and Futuna
Western Sahara
Yemen
Zambia
Zimbabwe

@@ data_for_state_name
Alabama
Alaska
Arizona
Arkansas
California
Colorado
Connecticut
Delaware
Florida
Georgia
Hawaii
Idaho
Illinois
Indiana
Iowa
Kansas
Kentucky
Louisiana
Maine
Maryland
Massachusetts
Michigan
Minnesota
Mississippi
Missouri
Montana
Nebraska
Nevada
NewHampshire
NewJersey
NewMexico
NewYork
NorthCarolina
NorthDakota
Ohio
Oklahoma
Oregon
Pennsylvania
RhodeIsland
SouthCarolina
SouthDakota
Tennessee
Texas
Utah
Vermont
Virginia
Washington
WestVirginia
Wisconsin
Wyoming

@@ data_for_state_abbr
AA
AE
AK
AL
AP
AR
AS
AZ
CA
CO
CT
DC
DE
FL
FM
GA
GU
HI
IA
ID
IL
IN
KS
KY
LA
MA
MD
ME
MH
MI
MN
MO
MP
MS
MT
NC
ND
NE
NH
NJ
NM
NV
NY
OH
OK
OR
PA
PR
PW
RI
SC
SD
TN
TX
UT
VA
VI
VT
WA
WI
WV
WY
