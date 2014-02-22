package Faker::Provider::UserAgent;

use Bubblegum::Class;
use Bubblegum::Syntax -types;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

around guesser => sub {
    my ($orig, $self, $format) =
        (shift, type_obj(shift), type_str(shift));

    return 'chrome_user_agent'            if $format =~ /^(chrome)$/;
    return 'internet_explorer_user_agent' if $format =~ /^(explorer)$/;
    return 'firefox_user_agent'           if $format =~ /^(firefox)$/;
    return 'opera_user_agent'             if $format =~ /^(opera)$/;
    return 'safari_user_agent'            if $format =~ /^(safari)$/;

    $self->$orig($format);
};

sub chrome_user_agent {
    my $self = type_obj shift;
    my $data = type_href $self->data;
    return $self->random_item($data->{chrome_user_agent_data});
}

sub internet_explorer_user_agent {
    my $self = type_obj shift;
    my $data = type_href $self->data;
    return $self->random_item($data->{explorer_user_agent_data});
}

sub firefox_user_agent {
    my $self = type_obj shift;
    my $data = type_href $self->data;
    return $self->random_item($data->{firefox_user_agent_data});
}

sub opera_user_agent {
    my $self = type_obj shift;
    my $data = type_href $self->data;
    return $self->random_item($data->{opera_user_agent_data});
}

sub safari_user_agent {
    my $self = type_obj shift;
    my $data = type_href $self->data;
    return $self->random_item($data->{safari_user_agent_data});
}

1;

__DATA__

@@ chrome_user_agent_data
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.4 (KHTML, like Gecko) Chrome/6.0.481.0 Safari/534.4
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.33 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.463.0 Safari/534.3
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.462.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.462.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.461.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.461.0 Safari/534.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.461.0 Safari/534.3
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.460.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.460.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.460.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.459.0 Safari/534.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.1 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.1 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.1 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.1 Safari/534.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.1 Safari/534.3
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.458.0 Safari/534.3
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.457.0 Safari/534.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.456.0 Safari/534.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/6.0.454.0 Safari/534.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/6.0.453.1 Safari/534.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/6.0.453.1 Safari/534.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/6.0.453.1 Safari/534.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/6.0.451.0 Safari/534.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.1 SUSE/6.0.428.0 (KHTML, like Gecko) Chrome/6.0.428.0 Safari/534.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.428.0 Safari/534.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.428.0 Safari/534.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.428.0 Safari/534.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.427.0 Safari/534.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.422.0 Safari/534.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.417.0 Safari/534.1
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.416.0 Safari/534.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/6.0.414.0 Safari/534.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.9 (KHTML, like Gecko) Chrome/6.0.400.0 Safari/533.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.8 (KHTML, like Gecko) Chrome/6.0.397.0 Safari/533.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/6.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.86 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.86 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.86 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.70 Safari/533.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.370.0 Safari/533.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.368.0 Safari/533.4
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.366.2 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.366.0 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.366.0 Safari/533.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.363.0 Safari/533.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.358.0 Safari/533.3
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.358.0 Safari/533.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.357.0 Safari/533.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.356.0 Safari/533.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.355.0 Safari/533.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.354.0 Safari/533.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.354.0 Safari/533.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.353.0 Safari/533.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.353.0 Safari/533.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.343.0 Safari/533.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.343.0 Safari/533.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_0; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.7 Safari/533.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.7 Safari/533.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.5 Safari/533.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.3 Safari/533.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.3 Safari/533.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.2 Safari/533.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.1 Safari/533.2
Mozilla/5.0 (X11; U; Linux i586; en-US) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/5.0.342.1 Safari/533.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/5.0.335.0 Safari/533.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/533.16 (KHTML, like Gecko) Chrome/5.0.335.0 Safari/533.16
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.310.0 Safari/532.9
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.309.0 Safari/532.9
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.308.0 Safari/532.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.1 Safari/532.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1025 Safari/532.5
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.8 (KHTML, like Gecko) Chrome/4.0.302.2 Safari/532.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.8 (KHTML, like Gecko) Chrome/4.0.288.1 Safari/532.8
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.8 (KHTML, like Gecko) Chrome/4.0.277.0 Safari/532.8
Mozilla/5.0 (X11; U; Slackware Linux x86_64; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.30 Safari/532.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.0 Safari/532.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.246.0 Safari/532.5
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.4 (KHTML, like Gecko) Chrome/4.0.237.0 Safari/532.4 Debian
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.3 (KHTML, like Gecko) Chrome/4.0.227.0 Safari/532.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.3 (KHTML, like Gecko) Chrome/4.0.224.2 Safari/532.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.3 (KHTML, like Gecko) Chrome/4.0.223.5 Safari/532.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.4 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.3 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE) Chrome/4.0.223.3 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.2 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.2 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.2 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.2 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.1 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.1 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.1 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.223.0 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.8 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.7 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.6 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.6 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.6 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.5 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.5 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.5 Safari/532.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.5 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.4 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.4 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.4 Safari/532.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.4 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.3 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.3 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.3 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.2 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.12 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.12 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.12 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.1 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.222.0 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.7 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.6 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.6 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.6 Safari/532.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.3 Safari/532.2
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.0 Safari/532.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.220.1 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.6 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.5 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.5 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.4 Safari/532.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.3 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.3 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.3 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.219.0 Safari/532.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.0 Safari/532.1
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.0 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.0 Safari/532.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.0 Safari/532.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.212.1 Safari/532.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.212.1 Safari/532.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.1
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.212.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.7 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.7 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.4 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.4 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.4 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.211.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.210.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.210.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.209.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.209.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.209.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.209.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.208.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.208.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.208.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.208.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.208.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (X11; U; FreeBSD i386; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.1 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.206.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.205.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.4 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.203.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0 (x86_64); de-DE) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; de-DE) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/525.13.
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.201.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.201.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.201.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.201.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.1 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.1 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.198 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.11 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.11 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.11 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.11 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.197 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196.2 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196.2 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196.0 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196.0 Safari/532.0
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.196 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.6 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.6 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.6 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.6 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.6 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.4 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.33 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.3 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.3 Safari/532.0
Mozilla/6.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML,like Gecko) Chrome/3.0.195.27
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.24 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.21 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.21 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.21 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.21 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.20 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.20 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.17 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.17 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.10 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.10 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.10 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.1 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.1 Safari/532.0
Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/531.4 (KHTML, like Gecko) Chrome/3.0.194.0 Safari/531.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/531.4 (KHTML, like Gecko) Chrome/3.0.194.0 Safari/531.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/531.3 (KHTML, like Gecko) Chrome/3.0.193.2 Safari/531.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/531.3 (KHTML, like Gecko) Chrome/3.0.193.2 Safari/531.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/531.3 (KHTML, like Gecko) Chrome/3.0.193.2 Safari/531.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/531.3 (KHTML, like Gecko) Chrome/3.0.193.0 Safari/531.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-US) AppleWebKit/531.3 (KHTML, like Gecko) Chrome/3.0.192 Safari/531.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/3.0.191.3 Safari/531.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/3.0.191.0 Safari/531.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/3.0.191.0 Safari/531.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/2.0.182.0 Safari/532.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/2.0.182.0 Safari/531.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/530.0 (KHTML, like Gecko) Chrome/2.0.182.0 Safari/531.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.8 (KHTML, like Gecko) Chrome/2.0.178.0 Safari/530.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.8 (KHTML, like Gecko) Chrome/2.0.177.1 Safari/530.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.8 (KHTML, like Gecko) Chrome/2.0.177.0 Safari/530.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.7 (KHTML, like Gecko) Chrome/2.0.177.0 Safari/530.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.7 (KHTML, like Gecko) Chrome/2.0.176.0 Safari/530.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.7 (KHTML, like Gecko) Chrome/2.0.176.0 Safari/530.7
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/530.7 (KHTML, like Gecko) Chrome/2.0.175.0 Safari/530.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.7 (KHTML, like Gecko) Chrome/2.0.175.0 Safari/530.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.6 (KHTML, like Gecko) Chrome/2.0.175.0 Safari/530.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/530.6 (KHTML, like Gecko) Chrome/2.0.174.0 Safari/530.6
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.6 (KHTML, like Gecko) Chrome/2.0.174.0 Safari/530.6
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.6 (KHTML, like Gecko) Chrome/2.0.174.0 Safari/530.6
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.174.0 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.173.1 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.173.1 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.173.0 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.8 Safari/530.5
Mozilla/6.0 (Windows; U; Windows NT 6.0; en-US) Gecko/2009032609 Chrome/2.0.172.6 Safari/530.7
Mozilla/6.0 (Windows; U; Windows NT 6.0; en-US) Gecko/2009032609 (KHTML, like Gecko) Chrome/2.0.172.6 Safari/530.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.6 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.43 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.43 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.43 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.43 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.42 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.40 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.40 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.39 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.39 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.23 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.2 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.2 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/530.4 (KHTML, like Gecko) Chrome/2.0.172.0 Safari/530.4
Mozilla/5.0 (Windows; U; Windows NT 5.2; eu) AppleWebKit/530.4 (KHTML, like Gecko) Chrome/2.0.172.0 Safari/530.4
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/530.4 (KHTML, like Gecko) Chrome/2.0.172.0 Safari/530.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/2.0.172.0 Safari/530.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.4 (KHTML, like Gecko) Chrome/2.0.171.0 Safari/530.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.1 (KHTML, like Gecko) Chrome/2.0.170.0 Safari/530.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.1 (KHTML, like Gecko) Chrome/2.0.169.0 Safari/530.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.1 (KHTML, like Gecko) Chrome/2.0.168.0 Safari/530.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.1 (KHTML, like Gecko) Chrome/2.0.164.0 Safari/530.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.0 (KHTML, like Gecko) Chrome/2.0.162.0 Safari/530.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.0 (KHTML, like Gecko) Chrome/2.0.160.0 Safari/530.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/528.10 (KHTML, like Gecko) Chrome/2.0.157.2 Safari/528.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.10 (KHTML, like Gecko) Chrome/2.0.157.2 Safari/528.10
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/528.11 (KHTML, like Gecko) Chrome/2.0.157.0 Safari/528.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.9 (KHTML, like Gecko) Chrome/2.0.157.0 Safari/528.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.11 (KHTML, like Gecko) Chrome/2.0.157.0 Safari/528.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.10 (KHTML, like Gecko) Chrome/2.0.157.0 Safari/528.10
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/2.0.156.1 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/2.0.156.1 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/2.0.156.1 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/2.0.156.0 Version/3.2.1 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/2.0.156.0 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/528.8 (KHTML, like Gecko) Chrome/1.0.156.0 Safari/528.8
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.59 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.59 Safari/525.19
Mozilla/4.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.59 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.55 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.53 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.53 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.53 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.53 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.53 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.50 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.50 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.48 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.46 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.43 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.43 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.43 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.43 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.42 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.4.154.31 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.4.154.18 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/528.4 (KHTML, like Gecko) Chrome/0.3.155.0 Safari/528.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.3.155.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.3.154.9 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.3.154.6 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.153.1 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.153.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.153.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.152.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.152.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.151.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.151.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/0.2.151.0 Safari/525.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.6 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.6 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.30 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.30 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.29 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.29 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.29 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; de) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13(KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Linux; U; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.27 Safari/525.13
Mozilla/5.0 (Macintosh; U; Mac OS X 10_6_1; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/ Safari/530.5
Mozilla/5.0 (Macintosh; U; Mac OS X 10_5_7; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/ Safari/530.5
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-US) AppleWebKit/530.9 (KHTML, like Gecko) Chrome/ Safari/530.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-US) AppleWebKit/530.6 (KHTML, like Gecko) Chrome/ Safari/530.6
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-US) AppleWebKit/530.5 (KHTML, like Gecko) Chrome/ Safari/530.5

@@ explorer_user_agent_data
Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 1.1.4322)
Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727)
Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.0; Trident/4.0; InfoPath.1; SV1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 3.0.04506.30)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; Media Center PC 6.0; InfoPath.2; MS-RTC LM 8)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; InfoPath.2)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Zune 3.0)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; msn OptimizedIE8;ZHCN)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; MS-RTC LM 8; .NET4.0C; .NET4.0E; Zune 4.7; InfoPath.3)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; MS-RTC LM 8)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; Zune 4.0)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; yie8)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; Zune 3.0; MS-RTC LM 8)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; OfficeLiveConnector.1.3; OfficeLivePatch.0.0; MS-RTC LM 8; Zune 4.0)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; MS-RTC LM 8)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; FDM; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C; .NET4.0E; FDM)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; eSobiSubscriber 2.0.4.16; OfficeLiveConnector.1.4; OfficeLivePatch.1.3; InfoPath.3)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; eSobiSubscriber 2.0.4.16; InfoPath.2; OfficeLiveConnector.1.5; OfficeLivePatch.1.3)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; Media Center PC 3.0; .NET CLR 1.0.3705; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; FDM; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; InfoPath.1; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; InfoPath.1)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; Alexa Toolbar; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; Alexa Toolbar)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.40607)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.1; .NET CLR 1.0.3705; Media Center PC 3.1; Alexa Toolbar; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)
Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; el-GR)
Mozilla/5.0 (MSIE 7.0; Macintosh; U; SunOS; X11; gu; SV1; InfoPath.2; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648)
Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; c .NET CLR 3.0.04506; .NET CLR 3.5.30707; InfoPath.1; el-GR)
Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; c .NET CLR 3.0.04506; .NET CLR 3.5.30707; InfoPath.1; el-GR)
Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; fr-FR)
Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.0; en-US)
Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.2; WOW64; .NET CLR 2.0.50727)
Mozilla/4.79 [en] (compatible; MSIE 7.0; Windows NT 5.0; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648)
Mozilla/4.0 (Windows; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)
Mozilla/4.0 (Mozilla/4.0; MSIE 7.0; Windows NT 5.1; FDM; SV1; .NET CLR 3.0.04506.30)
Mozilla/4.0 (Mozilla/4.0; MSIE 7.0; Windows NT 5.1; FDM; SV1)
Mozilla/4.0 (compatible;MSIE 7.0;Windows NT 6.0)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0;)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; YPC 3.2.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; YPC 3.2.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; Media Center PC 5.0; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 3.0.04506)
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.30618; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 6.1; Windows XP; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 6.1; Windows XP)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.1; DigExt)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.1)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0; YComp 5.0.2.6)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 4.0; .NET CLR 1.0.2914)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 4.0)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows 98; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows 98; Win 9x 4.90)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows 98)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.1)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0; .NET CLR 1.0.3705)
Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 4.0)
Mozilla/4.0 (compatible; MSIE 6.01; Windows NT 6.0)
Mozilla/5.0 (Windows; U; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)
Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)
Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4325)
Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1)
Mozilla/45.0 (compatible; MSIE 6.0; Windows NT 5.1)
Mozilla/4.08 (compatible; MSIE 6.0; Windows NT 5.1)
Mozilla/4.01 (compatible; MSIE 6.0; Windows NT 5.1)
Mozilla/4.0 (X11; MSIE 6.0; i686; .NET CLR 1.1.4322; .NET CLR 2.0.50727; FDM)
Mozilla/4.0 (Windows; MSIE 6.0; Windows NT 6.0)
Mozilla/4.0 (Windows; MSIE 6.0; Windows NT 5.2)
Mozilla/4.0 (Windows; MSIE 6.0; Windows NT 5.0)
Mozilla/4.0 (Windows; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)
Mozilla/4.0 (MSIE 6.0; Windows NT 5.1)
Mozilla/4.0 (MSIE 6.0; Windows NT 5.0)
Mozilla/4.0 (compatible;MSIE 6.0;Windows 98;Q312461)
Mozilla/4.0 (Compatible; Windows NT 5.1; MSIE 6.0) (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; U; MSIE 6.0; Windows NT 5.1)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 3.5.21022)
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506; .NET CLR 1.1.4322; .NET CLR 3.5.21022; InfoPath.2)
Mozilla/4.0 (compatible; MSIE 6,0; Windows NT 5,1; SV1; Alexa Toolbar)
Mozilla/4.0 (compatible; MSIE 5.5b1; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.50; Windows NT; SiteKiosk 4.9; SiteCoach 1.0)
Mozilla/4.0 (compatible; MSIE 5.50; Windows NT; SiteKiosk 4.8; SiteCoach 1.0)
Mozilla/4.0 (compatible; MSIE 5.50; Windows NT; SiteKiosk 4.8)
Mozilla/4.0 (compatible; MSIE 5.50; Windows 98; SiteKiosk 4.8)
Mozilla/4.0 (compatible; MSIE 5.50; Windows 95; SiteKiosk 4.8)
Mozilla/4.0 (compatible;MSIE 5.5; Windows 98)
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1)
Mozilla/4.0 (compatible; MSIE 5.5;)
Mozilla/4.0 (Compatible; MSIE 5.5; Windows NT5.0; Q312461; SV1; .NET CLR 1.1.4322; InfoPath.2)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT5)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30618)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.5)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.2; .NET CLR 1.1.4322; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; FDM)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.2; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1; SV1; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.22; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.21; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.2; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.2; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.17; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.17; Mac_PowerPC Mac OS; en)
Mozilla/4.0 (compatible; MSIE 5.16; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.16; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.15; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.15; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.14; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.13; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.12; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.12; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.0b1; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 5.05; Windows NT 4.0)
Mozilla/4.0 (compatible; MSIE 5.05; Windows NT 3.51)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT; Hotbar 4.1.8.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT; DigExt)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT; .NET CLR 1.0.3705)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.2.6; MSIECrawler)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.2.6; Hotbar 4.2.8.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.2.6; Hotbar 3.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.2.6)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.2.4)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.0.0; Hotbar 4.1.8.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Wanadoo 5.6)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Wanadoo 5.3; Wanadoo 5.5)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Wanadoo 5.1)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; SV1; .NET CLR 1.1.4322; .NET CLR 1.0.3705; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; SV1)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Q312461; T312461)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; Q312461)
Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0; MSIECrawler)
Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)
Mozilla/4.0(compatible; MSIE 5.0; Windows 98; DigExt)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT;)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; YComp 5.0.2.6)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; YComp 5.0.2.5)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; Hotbar 4.1.8.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; Hotbar 3.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt; .NET CLR 1.0.3705)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 5.9; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 5.2; .NET CLR 1.1.4322)
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 5.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98;)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; YComp 5.0.2.4)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; Hotbar 3.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; YComp 5.0.2.6; yplus 1.0)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; YComp 5.0.2.6)
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98; DigExt; YComp 5.0.2.5; YComp 5.0.0.0)
Mozilla/4.0 (compatible; MSIE 4.5; Windows 98; )
Mozilla/4.0 (compatible; MSIE 4.5; Mac_PowerPC)
Mozilla/4.0 (compatible; MSIE 4.5; Mac_PowerPC)
Mozilla/4.0 PPC (compatible; MSIE 4.01; Windows CE; PPC; 240x320; Sprint:PPC-6700; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows NT)
Mozilla/4.0 (compatible; MSIE 4.01; Windows NT 5.0)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint;PPC-i830; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint; SCH-i830; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint:SPH-ip830w; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint:SPH-ip320; Smartphone; 176x220)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint:SCH-i830; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint:SCH-i320; Smartphone; 176x220)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Sprint:PPC-i830; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone; 176x220)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320; Sprint:PPC-6700; PPC; 240x320)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320; PPC)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC)
Mozilla/4.0 (compatible; MSIE 4.01; Windows CE)
Mozilla/4.0 (compatible; MSIE 4.01; Windows 98; Hotbar 3.0)
Mozilla/4.0 (compatible; MSIE 4.01; Windows 98; DigExt)
Mozilla/4.0 (compatible; MSIE 4.01; Windows 98)
Mozilla/4.0 (compatible; MSIE 4.01; Windows 95)
Mozilla/4.0 (compatible; MSIE 4.01; Mac_PowerPC)
Mozilla/4.0 WebTV/2.6 (compatible; MSIE 4.0)
Mozilla/4.0 (compatible; MSIE 4.0; Windows NT)
Mozilla/4.0 (compatible; MSIE 4.0; Windows 98 )
Mozilla/4.0 (compatible; MSIE 4.0; Windows 95; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Mozilla/4.0 (compatible; MSIE 4.0; Windows 95)
Mozilla/4.0 (Compatible; MSIE 4.0)
Mozilla/2.0 (compatible; MSIE 4.0; Windows 98)
Mozilla/2.0 (compatible; MSIE 3.0B; Windows NT)
Mozilla/2.0 (compatible; MSIE 3.03; Windows 3.1)
Mozilla/2.0 (compatible; MSIE 3.02; Windows 3.1)
Mozilla/2.0 (compatible; MSIE 3.01; Windows 95)
Mozilla/2.0 (compatible; MSIE 3.01; Windows 95)
Mozilla/3.0 (compatible; MSIE 3.0; Windows NT 5.0)
Mozilla/2.0 (compatible; MSIE 3.0; Windows 95)
Mozilla/2.0 (compatible; MSIE 3.0; Windows 3.1)
Mozilla/4.0 (compatible; MSIE 2.0; Windows NT 5.0; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)
Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)
Mozilla/1.22 (compatible; MSIE 2.0; Windows 3.1)

@@ firefox_user_agent_data
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.19) Gecko/20081202 Firefox (Debian-2.0.0.19-0etch1)
Mozilla/5.0 (X11; Linux i686; rv:2.0b3pre) Gecko/20100731 Firefox/4.0b3pre
Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.3) Gecko/20100401 Firefox/4.0 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.2) Gecko/20121223 Ubuntu/9.25 (jaunty) Firefox/3.8
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.25 (jaunty) Firefox/3.8
Mozilla/5.0 (X11; U; Linux i686; it-IT; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.25 (jaunty) Firefox/3.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Mozilla/5.0 (X11; U; Linux i686; it-IT; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.25 (jaunty) Firefox/3.8
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.3a5pre) Gecko/20100526 Firefox/3.7a5pre
Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2b5) Gecko/20091204 Firefox/3.6b5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2b5) Gecko/20091204 Firefox/3.6b5
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.2b5) Gecko/20091204 Firefox/3.6b5
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2) Gecko/20091218 Firefox 3.6b5
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.2b4) Gecko/20091124 Firefox/3.6b4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2b4) Gecko/20091124 Firefox/3.6b4
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2b1) Gecko/20091014 Firefox/3.6b1 GTB5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2a1pre) Gecko/20090428 Firefox/3.6a1pre
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2a1pre) Gecko/20090405 Firefox/3.6a1pre
Mozilla/5.0 (X11; U; Linux i686; ru-RU; rv:1.9.2a1pre) Gecko/20090405 Ubuntu/9.04 (jaunty) Firefox/3.6a1pre
Mozilla/5.0 (Windows; Windows NT 5.1; es-ES; rv:1.9.2a1pre) Gecko/20090402 Firefox/3.6a1pre
Mozilla/5.0 (Windows; Windows NT 5.1; en-US; rv:1.9.2a1pre) Gecko/20090402 Firefox/3.6a1pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.2a1pre) Gecko/20090402 Firefox/3.6a1pre (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.8) Gecko/20100723 SUSE/3.6.8-0.1.1 Firefox/3.6.8
Mozilla/5.0 (X11; U; Linux i686; zh-CN; rv:1.9.2.8) Gecko/20100722 Ubuntu/10.04 (lucid) Firefox/3.6.8
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.2.8) Gecko/20100723 Ubuntu/10.04 (lucid) Firefox/3.6.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.8) Gecko/20100727 Firefox/3.6.8
Mozilla/5.0 (X11; U; FreeBSD i386; de-CH; rv:1.9.2.8) Gecko/20100729 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; pt-BR; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; he; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.5.30729; .NET4.0C)
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.2.8) Gecko/20100722 Firefox 3.6.8
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.8) Gecko/20100722 BTRS86393 Firefox/3.6.8 ( .NET CLR 3.5.30729; .NET4.0C)
Mozilla/5.0 (Windows; U; Windows NT 5.2; zh-TW; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.5.30729; .NET4.0E)
Mozilla/5.0 (Windows; U; Windows NT 5.1; ro; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 (.NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.0.4506.2152; .NET4.0C)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.8) Gecko/20100721 Firefox/3.6.8
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en; rv:1.9.2.8) Gecko/20100805 Firefox/3.6.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.7) Gecko/20100723 Fedora/3.6.7-1.fc13 Firefox/3.6.7
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.7) Gecko/20100726 CentOS/3.6-3.el5.centos Firefox/3.6.7
Mozilla/5.0 (Windows; U; Windows NT 6.1; hu; rv:1.9.2.7) Gecko/20100713 Firefox/3.6.7 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-PT; rv:1.9.2.7) Gecko/20100713 Firefox/3.6.7 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6 GTB7.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6 GTB7.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.6) Gecko/20100628 Ubuntu/10.04 (lucid) Firefox/3.6.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; pt-PT; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 ( .NET CLR 3.5.30729; .NET4.0E)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.4) Gecko/20100614 Ubuntu/10.04 (lucid) Firefox/3.6.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.4) Gecko/20100625 Gentoo Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; ja; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.9.2.4) Gecko/20100523 Firefox/3.6.4 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.4) Gecko/20100527 Firefox/3.6.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.4) Gecko/20100527 Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.4) Gecko/20100523 Firefox/3.6.4 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-CA; rv:1.9.2.4) Gecko/20100523 Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.4) Gecko/20100513 Firefox/3.6.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.4) Gecko/20100503 Firefox/3.6.4 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; nb-NO; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; ko; rv:1.9.2.4) Gecko/20100523 Firefox/3.6.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.5; en-US; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4 GTB7.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3pre) Gecko/20100405 Firefox/3.6.3plugin1 ( .NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.2.3) Gecko/20100403 Fedora/3.6.3-4.fc13 Firefox/3.6.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3) Gecko/20100403 Firefox/3.6.3
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.2.3) Gecko/20100401 SUSE/3.6.3-1.1 Firefox/3.6.3
Mozilla/5.0 (X11; U; Linux i686; ko-KR; rv:1.9.2.3) Gecko/20100423 Ubuntu/10.04 (lucid) Firefox/3.6.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.3) Gecko/20100404 Ubuntu/10.04 (lucid) Firefox/3.6.3
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.2.3) Gecko/20100423 Ubuntu/10.04 (lucid) Firefox/3.6.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; pl; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; hu; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; ca; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 GTB7.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 GTB6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 ( .NET CLR 3.0.04506.30)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.1) Gecko/20100122 firefox/3.6.1
Mozilla/5.0(Windows; U; Windows NT 5.2; rv:1.9.2) Gecko/20100101 Firefox/3.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2) Gecko/20100222 Ubuntu/10.04 (lucid) Firefox/3.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2) Gecko/20100130 Gentoo Firefox/3.6
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.2) Gecko/20100308 Ubuntu/10.04 (lucid) Firefox/3.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.2pre) Gecko/20100312 Ubuntu/9.04 (jaunty) Firefox/3.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2) Gecko/20100128 Gentoo Firefox/3.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2) Gecko/20100115 Ubuntu/10.04 (lucid) Firefox/3.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6 FirePHP/0.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; ru-RU; rv:1.9.2) Gecko/20100105 MRA 5.6 (build 03278) Firefox/3.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; lt; rv:1.9.2) Gecko/20100115 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.3a3pre) Gecko/20100306 Firefox3.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.8) Gecko/20100806 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.9.2.3) Gecko/20100401 Firefox/3.6;MEGAUPLOAD 1.0
Mozilla/5.0 (Windows; U; Windows NT 6.1; ar; rv:1.9.2) Gecko/20100115 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.9.2) Gecko/20100115 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.9.2) Gecko/20100105 Firefox/3.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl; rv:1.9.2) Gecko/20100115 Firefox/3.6 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.2) Gecko/20100115 Firefox/3.6 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; zh-CN; rv:1.9.2) Gecko/20100101 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 5.2; zh-CN; rv:1.9.2) Gecko/20091111 Firefox/3.6
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b5pre) Gecko/20090517 Firefox/3.5b4pre (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b4pre) Gecko/20090409 Firefox/3.5b4pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b4pre) Gecko/20090401 Firefox/3.5b4pre
Mozilla/5.0 (X11; U; Linux i686; nl-NL; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; fr; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.1b4) Gecko/20090423 Firefox/3.5b4 GTB5
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.1.9) Gecko/20100402 Ubuntu/9.10 (karmic) Firefox/3.5.9 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.1.9) Gecko/20100330 Fedora/3.5.9-2.fc12 Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.1.9) Gecko/20100317 SUSE/3.5.9-0.1.1 Firefox/3.5.9 GTB7.0
Mozilla/5.0 (X11; U; Linux x86_64; es-CL; rv:1.9.1.9) Gecko/20100402 Ubuntu/9.10 (karmic) Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux x86_64; cs-CZ; rv:1.9.1.9) Gecko/20100317 SUSE/3.5.9-0.1.1 Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.1.9) Gecko/20100401 Ubuntu/9.10 (karmic) Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux i686; hu-HU; rv:1.9.1.9) Gecko/20100330 Fedora/3.5.9-1.fc12 Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.1.9) Gecko/20100317 SUSE/3.5.9-0.1 Firefox/3.5.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100315 Ubuntu/9.10 (karmic) Firefox/3.5.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; tr; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 GTB7.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; hu; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; et; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 GTB7.0 (.NET CLR 3.0.30618)
Mozilla/5.0 (Windows; U; Windows NT 6.0; ca; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1.9) Gecko/20100315 Firefox/3.5.9 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; ru; rv:1.9.1.8) Gecko/20100216 Fedora/3.5.8-1.fc12 Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.1.8) Gecko/20100216 Fedora/3.5.8-1.fc11 Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8) Gecko/20100318 Gentoo Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux i686; zh-CN; rv:1.9.1.8) Gecko/20100216 Fedora/3.5.8-1.fc12 Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux i686; ja-JP; rv:1.9.1.8) Gecko/20100216 Fedora/3.5.8-1.fc12 Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8
Mozilla/5.0 (X11; U; FreeBSD i386; ja-JP; rv:1.9.1.8) Gecko/20100305 Firefox/3.5.8
Mozilla/5.0 (Windows; U; Windows NT 6.1; sl; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 (.NET CLR 3.5.30729) FirePHP/0.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB7.0 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2) Gecko/20100305 Gentoo Firefox/3.5.7
Mozilla/5.0 (X11; U; Linux x86_64; cs-CZ; rv:1.9.1.7) Gecko/20100106 Ubuntu/9.10 (karmic) Firefox/3.5.7
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.1.7) Gecko/20091222 SUSE/3.5.7-1.1.1 Firefox/3.5.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 GTB6
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.30729; .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; fr; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7 (.NET CLR 3.0.04506.648)
Mozilla/5.0 (Windows; U; Windows NT 5.1; fa; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.7) Gecko/20091221 MRA 5.5 (build 02842) Firefox/3.5.7 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.1.6) Gecko/20091215 Ubuntu/9.10 (karmic) Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.6) Gecko/20100117 Gentoo Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux i686; zh-CN; rv:1.9.1.6) Gecko/20091216 Fedora/3.5.6-1.fc11 Firefox/3.5.6 GTB6
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.1.6) Gecko/20091201 SUSE/3.5.6-1.1.1 Firefox/3.5.6 GTB6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.6) Gecko/20100118 Gentoo Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.1.6) Gecko/20091215 Ubuntu/9.10 (karmic) Firefox/3.5.6 GTB6
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.6) Gecko/20091215 Ubuntu/9.10 (karmic) Firefox/3.5.6 GTB7.0
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.6) Gecko/20091215 Ubuntu/9.10 (karmic) Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.6) Gecko/20091201 SUSE/3.5.6-1.1.1 Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.9.1.6) Gecko/20100107 Fedora/3.5.6-1.fc12 Firefox/3.5.6
Mozilla/5.0 (X11; U; Linux i686; ca; rv:1.9.1.6) Gecko/20091215 Ubuntu/9.10 (karmic) Firefox/3.5.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; id; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.6) Gecko/20091201 MRA 5.4 (build 02647) Firefox/3.5.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 (.NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.6) Gecko/20091201 MRA 5.5 (build 02842) Firefox/3.5.6 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.6) Gecko/20091201 MRA 5.5 (build 02842) Firefox/3.5.6
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 GTB6 (.NET CLR 3.5.30729) FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 (.NET CLR 3.5.30729) FBSMTWB
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.1.5) Gecko/20091109 Ubuntu/9.10 (karmic) Firefox/3.5.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.8pre) Gecko/20091227 Ubuntu/9.10 (karmic) Firefox/3.5.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.5) Gecko/20091114 Gentoo Firefox/3.5.5
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; uk; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 MRA 5.5 (build 02842) Firefox/3.5.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.9.1.5) Gecko/20091102 MRA 5.5 (build 02842) Firefox/3.5.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; zh-CN; rv:1.9.1.5) Gecko/Firefox/3.5.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.5) Gecko/20091102 MRA 5.5 (build 02842) Firefox/3.5.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.5) Gecko/20091102 MRA 5.5 (build 02842) Firefox/3.5.5
Mozilla/5.0 (Windows NT 5.1; U; zh-cn; rv:1.8.1) Gecko/20091102 Firefox/3.5.5
Mozilla/5.0 (X11; U; Linux x86_64; ja; rv:1.9.1.4) Gecko/20091016 SUSE/3.5.4-1.1.2 Firefox/3.5.4
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729) FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.4) Gecko/20091007 Firefox/3.5.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 ( .NET CLR 3.5.30729; .NET4.0E)
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.1.4) Gecko/20091007 Firefox/3.5.4
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.1.5) Gecko/20091109 Ubuntu/9.10 (karmic) Firefox/3.5.3pre
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.3) Gecko/20090914 Slackware/13.0_stable Firefox/3.5.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.3) Gecko/20090913 Firefox/3.5.3
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.1.3) Gecko/20091020 Ubuntu/9.10 (karmic) Firefox/3.5.3
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.1.3) Gecko/20090913 Firefox/3.5.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.3) Gecko/20090919 Firefox/3.5.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.3) Gecko/20090912 Gentoo Firefox/3.5.3 FirePHP/0.3
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 GTB5
Mozilla/5.0 (X11; U; FreeBSD i386; ru-RU; rv:1.9.1.3) Gecko/20090913 Firefox/3.5.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.5.3;MEGAUPLOAD 1.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; de-DE; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; ko; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; fi; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 2.0.50727; .NET CLR 3.0.30618; .NET CLR 3.5.21022; .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; bg; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; ko; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; pl; rv:1.9.1.2) Gecko/20090911 Slackware Firefox/3.5.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.2) Gecko/20090803 Slackware Firefox/3.5.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.2) Gecko/20090803 Firefox/3.5.2 Slackware
Mozilla/5.0 (X11; U; Linux i686; ru-RU; rv:1.9.1.2) Gecko/20090804 Firefox/3.5.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.2) Gecko/20090729 Slackware/13.0 Firefox/3.5.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (X11; U; Linux i686 (x86_64); fr; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 GTB7.1 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-MX; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; uk; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.1.2) Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.12) Gecko/2009070611 Firefox/3.5.12
Mozilla/5.0 (Windows; U; Windows NT 5.1; hu; rv:1.9.1.11) Gecko/20100701 Firefox/3.5.11
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.10) Gecko/20100506 SUSE/3.5.10-0.1.1 Firefox/3.5.10
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1.10) Gecko/20100504 Firefox/3.5.10 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; rv:1.9.1.1) Gecko/20090716 Linux Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3) Gecko/20100524 Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.1) Gecko/20090716 Linux Mint/7 (Gloria) Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.1) Gecko/20090716 Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.1) Gecko/20090714 SUSE/3.5.1-1.1 Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux x86; rv:1.9.1.1) Gecko/20090716 Linux Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.2pre) Gecko/20090729 Ubuntu/9.04 (jaunty) Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 GTB5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.1) Gecko/20090722 Gentoo Firefox/3.5.1
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1.1) Gecko/20090714 SUSE/3.5.1-1.1 Firefox/3.5.1
Mozilla/5.0 (X11; U; DragonFly i386; de; rv:1.9.1) Gecko/20090720 Firefox/3.5.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.1) Gecko/20090718 Firefox/3.5.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; tr; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 GTB5 (.NET CLR 4.0.20506)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.1) Gecko/20090715 Firefox/3.5.1 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11;U; Linux i686; en-GB; rv:1.9.1) Gecko/20090624 Ubuntu/9.04 (jaunty) Firefox/3.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1) Gecko/20090630 Firefox/3.5 GTB6
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux i686; it-IT; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.04 (jaunty) Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.9.1) Gecko/20090624 Ubuntu/9.04 (jaunty) Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1) Gecko/20090701 Ubuntu/9.04 (jaunty) Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; en-us; rv:1.9.0.2) Gecko/2008092313 Ubuntu/9.04 (jaunty) Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1) Gecko/20090624 Ubuntu/8.04 (hardy) Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.1) Gecko/20090624 Firefox/3.5
Mozilla/5.0 (X11; U; Linux i686 (x86_64); de; rv:1.9.1) Gecko/20090624 Firefox/3.5
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.9.1) Gecko/20090703 Firefox/3.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; pl; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1) Gecko/20090612 Firefox/3.5 (.NET CLR 4.0.20506)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1) Gecko/20090612 Firefox/3.5
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 4.0.20506)
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.1) Gecko/20090624 Firefox/3.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-TW; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.9.1) Gecko/20090624 Firefox/3.5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1b3pre) Gecko/20090105 Firefox/3.1b3pre
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.1b3pre) Gecko/20090204 Firefox/3.1b3pre
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1b3) Gecko/20090327 Fedora/3.1-0.11.beta3.fc11 Firefox/3.1b3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1b3) Gecko/20090312 Firefox/3.1b3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1b3) Gecko/20090407 Firefox/3.1b3
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.1; pl; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1) Gecko/20090624 Firefox/3.1b3;MEGAUPLOAD 1.0 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-AR; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1b3) Gecko/20090405 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1b3) Gecko/20090305 Firefox/3.1b3 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; x64; en-US; rv:1.9.1b2pre) Gecko/20081026 Firefox/3.1b2pre
Mozilla/5.0 (Windows; U; Windows NT 6.0 x64; en-US; rv:1.9.1b2pre) Gecko/20081026 Firefox/3.1b2pre
Mozilla/5.0 (Windows; U; Windows NT 6.0 ; x64; en-US; rv:1.9.1b2pre) Gecko/20081026 Firefox/3.1b2pre
Mozilla/5.0 (Windows; U; Windows NT 5.1 ; x64; en-US; rv:1.9.1b2pre) Gecko/20081026 Firefox/3.1b2pre
Mozilla/5.0 (X11; U; DragonFly i386; de; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.1; de-AT; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; it; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; de-AT; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; ko; rv:1.9.1b2) Gecko/20081201 Firefox/3.1b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.9.1b1) Gecko/20081007 Firefox/3.1b1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1b2) Gecko/20081127 Firefox/3.1b1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.1.6
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.9.0.2) Gecko/2008092313 Firefox/3.1.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1b3) Gecko/20090327 GNU/Linux/x86_64 Firefox/3.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6pre) Gecko/2009011606 Firefox/3.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9pre) Gecko/2008040318 Firefox/3.0pre (Swiftfox)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9b5pre) Gecko/2008030706 Firefox/3.0b5pre
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux x86_64; pt-BR; rv:1.9b5) Gecko/2008041515 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9pre) Gecko/2008042312 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b5) Gecko/2008041816 Fedora/3.0-0.55.beta5.fc9 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b5) Gecko/2008040514 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; tr-TR; rv:1.9b5) Gecko/2008032600 SUSE/2.9.95-25.1 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9b5) Gecko/2008032600 SUSE/2.9.95-25.1 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9b5) Gecko/2008050509 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9b5) Gecko/2008041514 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b5) Gecko/2008050509 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9b5) Gecko/2008041514 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9b5) Gecko/2008050509 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9b5) Gecko/2008041514 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 5.2; nl; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 5.2; fr; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9b5) Gecko/2008032620 Firefox/3.0b5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.4; en-GB; rv:1.9b5) Gecko/2008032619 Firefox/3.0b5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b4pre) Gecko/2008021714 Firefox/3.0b4pre (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b4pre) Gecko/2008021712 Firefox/3.0b4pre (Swiftfox)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9b4pre) Gecko/2008020708 Firefox/3.0b4pre
Mozilla/5.0 (X11; U; Windows NT 5.0; en-US; rv:1.9b4) Gecko/2008030318 Firefox/3.0b4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b4) Gecko/2008040813 Firefox/3.0b4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b4) Gecko/2008031318 Firefox/3.0b4
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9b4) Gecko/2008030800 SUSE/2.9.94-4.2 Firefox/3.0b4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b4) Gecko/2008031317 Firefox/3.0b4
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl; rv:1.9b4) Gecko/2008030714 Firefox/3.0b4
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.9b4) Gecko/2008030714 Firefox/3.0b4
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9b4) Gecko/2008030714 Firefox/3.0b4
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.9b4) Gecko/2008030714 Firefox/3.0b4
Mozilla/5.0 (Windows; U; Windows NT 5.1; lt; rv:1.9b4) Gecko/2008030714 Firefox/3.0b4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; it; rv:1.9b4) Gecko/2008030317 Firefox/3.0b4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b3pre) Gecko/2008020509 Firefox/3.0b3pre
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9b3pre) Gecko/2008011321 Firefox/3.0b3pre
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b3pre) Gecko/2008020507 Firefox/3.0b3pre
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b3) Gecko/2008020513 Firefox/3.0b3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9b3) Gecko/2008020514 Firefox/3.0b3
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9b3) Gecko/2008020514 Firefox/3.0b3
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9b3) Gecko/2008020514 Firefox/3.0b3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9b3) Gecko/2008020514 Firefox/3.0b3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b2) Gecko/2007121016 Firefox/3.0b2
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.9b2) Gecko/2007121016 Firefox/3.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.9b2) Gecko/2007121120 Firefox/3.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.9b2) Gecko/2007121120 Firefox/3.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9b1) Gecko/2007110703 Firefox/3.0b1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9b3pre) Gecko/2008010415 Firefox/3.0b
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.9a2) Gecko/20080530 Firefox/3.0a2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20060814 Firefox/3.0a1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.9a1) Gecko/20061204 Firefox/3.0a1
Mozilla/5.0 (Macintosh; I; PPC Mac OS X Mach-O; en-US; rv:1.9a1) Gecko/20061204 Firefox/3.0a1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080716 Firefox/3.07
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.0.8) Gecko/2009032609 Firefox/3.07
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.03
Mozilla/6.0 (Windows; U; Windows NT 7.0; en-US; rv:1.9.0.8) Gecko/2009032609 Firefox/3.0.9 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.9) Gecko/2009042114 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.9) Gecko/2009042114 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.10 (intrepid) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.9) Gecko/2009042114 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.10 (intrepid) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.7) Gecko/2009030422 Kubuntu/8.10 (intrepid) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.9) Gecko/2009042113 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.04 (hardy) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; fi-FI; rv:1.9.0.9) Gecko/2009042113 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.0.9) Gecko/2009042113 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.10 (intrepid) Firefox/3.0.9 GTB5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.9) Gecko/2009042113 Linux Mint/6 (Felicia) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.9) Gecko/2009041408 Red Hat/3.0.9-1.el5 Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.9) Gecko/2009040820 Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.9) Gecko/2009042113 Ubuntu/9.04 (jaunty) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.10 (intrepid) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.9) Gecko/2009042113 Ubuntu/8.04 (hardy) Firefox/3.0.9
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.9) Gecko/2009041500 SUSE/3.0.9-2.2 Firefox/3.0.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; nl; rv:1.9.0.9) Gecko/2009040821 Firefox/3.0.9 FirePHP/0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.0.4) Firefox/3.0.8)
Mozilla/6.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.8) Gecko/2009032609 Firefox/3.0.8 (.NET CLR 3.5.30729)
Mozilla/6.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.8) Gecko/2009032609 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; zh-TW; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.04 (hardy) Firefox/3.0.8 GTB5
Mozilla/5.0 (X11; U; Linux x86_64; nb-NO; rv:1.9.0.8) Gecko/2009032600 SUSE/3.0.8-1.2 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.8) Gecko/2009033100 Ubuntu/9.04 (jaunty) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.10 (intrepid) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; fi-FI; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.10 (intrepid) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009040312 Gentoo Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009033100 Ubuntu/9.04 (jaunty) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032908 Gentoo Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032713 Ubuntu/9.04 (jaunty) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.10 (intrepid) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.04 (hardy) Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032712 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032600 SUSE/3.0.8-1.1.1 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.8) Gecko/2009032600 SUSE/3.0.8-1.1 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009030810 Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US) Gecko Firefox/3.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.10 (intrepid) Firefox/3.0.8 FirePHP/0.2.4
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.8) Gecko/2009032712 Ubuntu/8.10 (intrepid) Firefox/3.0.8
Mozilla/5.0 (X11; U; Windows NT 5.1; en-US; rv:1.9.0.7) Gecko/2009021910 Firefox/3.0.7
Mozilla/5.0 (X11; U; Mac OSX; it; rv:1.9.0.7) Gecko/2009030422 Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; sv-SE; rv:1.9.0.7) Gecko/2009030423 Ubuntu/8.10 (intrepid) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.7) Gecko/2009030423 Ubuntu/8.10 (intrepid) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.7) Gecko/2009022800 SUSE/3.0.7-1.4 Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009032606 Red Hat/3.0.7-1.el5 Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009032319 Gentoo Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009031802 Gentoo Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009031120 Mandriva/1.9.0.7-0.1mdv2009.0 (2009.0) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009031120 Mandriva Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009030516 Ubuntu/9.04 (jaunty) Firefox/3.0.7 GTB5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009030516 Ubuntu/9.04 (jaunty) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009030423 Ubuntu/8.10 (intrepid) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.7) Gecko/2009030503 Fedora/3.0.7-1.fc9 Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.7) Gecko/2009030620 Gentoo Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.9.0.7) Gecko/2009030422 Ubuntu/8.04 (hardy) Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.7) Gecko/2009030503 Fedora/3.0.7-1.fc10 Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux i686; hu-HU; rv:1.9.0.7) Gecko/2009030422 Ubuntu/8.10 (intrepid) Firefox/3.0.7 FirePHP/0.2.4
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.7) Gecko/2009031218 Gentoo Firefox/3.0.7
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.7) Gecko/2009030422 Ubuntu/8.10 (intrepid) Firefox/3.0.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.6pre) Gecko/2008121605 Firefox/3.0.6pre
UserAgent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.6) Gecko/2009011912 Firefox/3.0.6
UserAgent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-GB; rv:1.9.0.6) Gecko/2009011912 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux; fr; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.10 (intrepid) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.6) Gecko/2009020519 Ubuntu/9.04 (jaunty) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.6) Gecko/2009012700 SUSE/3.0.6-1.4 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.16) Gecko/2009121609 Firefox/3.0.6 (Windows NT 5.1)
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.9.0.6) Gecko/2009011913 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.9.0.6) Gecko/2009011912 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.10 (intrepid) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; eu; rv:1.9.0.6) Gecko/2009012700 SUSE/3.0.6-0.1.2 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.10 (intrepid) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009022714 Ubuntu/9.04 (jaunty) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009022111 Gentoo Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.04 (hardy) Firefox/3.0.6 FirePHP/0.2.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009020616 Gentoo Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009020518 Ubuntu/9.04 (jaunty) Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009020410 Fedora/3.0.6-1.fc9 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009012700 SUSE/3.0.6-0.1 Firefox/3.0.6
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.10 (intrepid) Firefox/3.0.6
Mozilla/5.0 (X11; U; x86_64 Linux; en_US; rv:1.9.0.5) Gecko/2008120121 Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9.0.5) Gecko/2008121623 Ubuntu/8.10 (intrepid) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008122406 Gentoo Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008122120 Gentoo Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008122014 CentOS/3.0.5-1.el4.centos Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008121911 CentOS/3.0.5-1.el5.centos Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008121806 Gentoo Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008121711 Ubuntu/9.04 (jaunty) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.5) Gecko/2008122010 Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; sk; rv:1.9.0.5) Gecko/2008121621 Ubuntu/8.04 (hardy) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.0.5) Gecko/2008121622 Ubuntu/8.10 (intrepid) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.0.5) Gecko/2008120121 Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.5) Gecko/2008121300 SUSE/3.0.5-0.1 Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.9.0.5) Gecko/2008121622 Ubuntu/8.10 (intrepid) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9.0.5) Gecko/2008121711 Ubuntu/9.04 (jaunty) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.9.0.5) Gecko/2008123017 Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; fi-FI; rv:1.9.0.5) Gecko/2008121622 Ubuntu/8.10 (intrepid) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.5) Gecko/2009011301 Gentoo Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.5) Gecko/2008121914 Ubuntu/8.04 (hardy) Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.5) Gecko/2008121718 Gentoo Firefox/3.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.4pre) Gecko/2008101311 Firefox/3.0.4pre (Swiftfox)
Mozilla/5.0 (X11; U; SunOS i86pc; fr; rv:1.9.0.4) Gecko/2008111710 Firefox/3.0.4
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.9.0.4) Gecko/2008111710 Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.4) Gecko/2008111217 Fedora/3.0.4-1.fc10 Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux x86_64; es-AR; rv:1.9.0.4) Gecko/2008110510 Red Hat/3.0.4-1.el5_2 Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.6) Gecko/2009020407 Firefox/3.0.4 (Debian-3.0.6-1)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.4) Gecko/2008120512 Gentoo Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux x86_64; cs-CZ; rv:1.9.0.4) Gecko/2008111318 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9.0.4) Gecko/2008111317 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; pt-PT; rv:1.9.0.5) Gecko/2008121622 Ubuntu/8.10 (intrepid) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.4) Gecko/2008111317 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.4) Gecko/2008111217 Fedora/3.0.4-1.fc10 Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.4) Gecko/20081031100 SUSE/3.0.4-4.6 Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.0.4) Gecko/2008111317 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.0.11) Gecko/2009060309 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9.0.4) Gecko/2008111217 Red Hat Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.0.4) Gecko/2008111317 Ubuntu/8.04 (hardy) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.9.0.4) Gecko/2008111317 Linux Mint/5 (Elyssa) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.7) Gecko/2009032018 Firefox/3.0.4 (Debian-3.0.6-1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.5) Gecko/2008121622 Linux Mint/6 (Felicia) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.4) Gecko/2008111318 Ubuntu/8.10 (intrepid) Firefox/3.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3pre) Gecko/2008090713 Firefox/3.0.3pre (Swiftfox)
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.3) Gecko/2008092813 Gentoo Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; es-AR; rv:1.9.0.3) Gecko/2008092515 Ubuntu/8.10 (intrepid) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.7) Gecko/2009030719 Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3 (Linux Mint)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.3) Gecko/2008090713 Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x86; es-ES; rv:1.9.0.3) Gecko/2008092417 Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux x64_64; es-AR; rv:1.9.0.3) Gecko/2008092515 Ubuntu/8.10 (intrepid) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux ia64; en-US; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.3) Gecko/2008092700 SUSE/3.0.3-2.2 Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; ko-KR; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9.0.3) Gecko/2008092510 Ubuntu/8.04 (hardy) Firefox/3.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.0.2pre) Gecko/2008082305 Firefox/3.0.2pre
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9.0.2) Gecko/2008092213 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.2) Gecko/2008092213 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.2) Gecko/2008092418 CentOS/3.0.2-3.el5.centos Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.2) Gecko/2008092318 Fedora/3.0.2-1.fc9 Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.2) Gecko/2008092213 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.2) Gecko/2008092213 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.2) Gecko/2008092318 Fedora/3.0.2-1.fc9 Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008110715 ASPLinux/3.0.2-3.0.120asp Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092809 Gentoo Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092418 CentOS/3.0.2-3.el5.centos Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092318 Fedora/3.0.2-1.fc9 Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092313 Ubuntu/1.4.0 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008092000 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.2) Gecko/2008091816 Red Hat/3.0.2-3.el5 Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.2) Gecko/2008092313 Ubuntu/8.04 (hardy) Firefox/3.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1pre) Gecko/2008062222 Firefox/3.0.1pre (Swiftfox)
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9) Gecko/2008052906 Firefox/3.0.1pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1b3pre) Gecko/20090213 Firefox/3.0.1b3pre
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.19) Gecko/2010051407 CentOS/3.0.19-1.el5.centos Firefox/3.0.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 (.NET CLR 3.5.30729) FirePHP/0.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; cs; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 GTB7.0 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.0.19) Gecko/2010031422 Firefox/3.0.19 ( .NET CLR 3.5.30729; .NET4.0C)
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.18) Gecko/2010021501 Firefox/3.0.18
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.18) Gecko/2010020400 SUSE/3.0.18-0.1.1 Firefox/3.0.18
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE; rv:1.9.0.18) Gecko/2010020220 Firefox/3.0.18 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.17) Gecko/2010011010 Mandriva/1.9.0.17-0.1mdv2009.1 (2009.1) Firefox/3.0.17 GTB6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.17) Gecko/2010010604 Ubuntu/9.04 (jaunty) Firefox/3.0.17 FirePHP/0.4
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.10) Gecko/2009122115 Firefox/3.0.17
Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.9.0.16) Gecko/2009121601 Ubuntu/9.04 (jaunty) Firefox/3.0.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.0.16 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; ru; rv:1.9.0.14) Gecko/2009090217 Ubuntu/9.04 (jaunty) Firefox/3.0.14 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; pt-BR; rv:1.9.0.14) Gecko/2009090217 Ubuntu/9.04 (jaunty) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.14) Gecko/2009090216 Ubuntu/8.04 (hardy) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.14) Gecko/2009090216 Ubuntu/8.04 (hardy) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux x86_64; fi-FI; rv:1.9.0.14) Gecko/2009090217 Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.14) Gecko/2009090217 Ubuntu/9.04 (jaunty) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.14) Gecko/2009090216 Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.14) Gecko/20090916 Ubuntu/9.04 (jaunty) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.14) Gecko/2009091010 Firefox/3.0.14 (Debian-3.0.14-1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.14) Gecko/2009090905 Fedora/3.0.14-1.fc10 Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.14) Gecko/2009090216 Ubuntu/9.04 (jaunty) Firefox/3.0.14 GTB5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.14) Gecko/2009090216 Ubuntu/9.04 (jaunty) Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.14) Gecko/2009082505 Red Hat/3.0.14-1.el5_4 Firefox/3.0.14
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 GTB6
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; ; rv:1.9.0.14) Gecko/2009082707 Firefox/3.0.14
Mozilla/5.0 (X11; U; Linux x86_64; zh-TW; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.14) Gecko/2009090217 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; fr-be; rv:1.9.0.8) Gecko/2009073022 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; fi-FI; rv:1.9.0.13) Gecko/2009080315 Linux Mint/6 (Felicia) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.13) Gecko/2009080316 Ubuntu/8.04 (hardy) Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.13) Gecko/2009080315 Ubuntu/9.04 (jaunty) Firefox/3.0.13
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 4.0.20506)
Mozilla/5.0 (Windows; U; Windows NT 6.0; cs; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-be; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729) FBSMTWB
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.0.13) Gecko/2009073022 Firefox/3.0.13 (.NET CLR 3.5.30729)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; de; rv:1.9.0.13) Gecko/2009073021 Firefox/3.0.13
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.12) Gecko/2009072711 CentOS/3.0.12-1.el5.centos Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.12) Gecko/2009070811 Ubuntu/9.04 (jaunty) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.12) Gecko/2009070818 Ubuntu/8.10 (intrepid) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.12) Gecko/2009070811 Ubuntu/9.04 (jaunty) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.12) Gecko/2009070811 Ubuntu/9.04 (jaunty) Firefox/3.0.12 FirePHP/0.3
Mozilla/5.0 (X11; U; Linux ppc; en-GB; rv:1.9.0.12) Gecko/2009070818 Ubuntu/8.10 (intrepid) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.12) Gecko/2009070818 Ubuntu/8.10 (intrepid) Firefox/3.0.12 FirePHP/0.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.12) Gecko/2009070818 Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.12) Gecko/2009070812 Linux Mint/5 (Elyssa) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.12) Gecko/2009070610 Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.12) Gecko/2009070812 Ubuntu/8.04 (hardy) Firefox/3.0.12
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.12) Gecko/2009070811 Ubuntu/9.04 (jaunty) Firefox/3.0.12
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 (.NET CLR 3.5.30729) FirePHP/0.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; sr; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 GTB5 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.0.12) Gecko/2009070611 Firefox/3.0.12 (.NET CLR 3.5.30729)
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.11) Gecko/2009060309 Ubuntu/9.04 (jaunty) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.11) Gecko/2009070612 Gentoo Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.11) Gecko/2009061417 Gentoo Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.11) Gecko/2009061118 Fedora/3.0.11-1.fc9 Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.11) Gecko/2009060309 Linux Mint/7 (Gloria) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.11) Gecko/2009060308 Ubuntu/9.04 (jaunty) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.11) Gecko/2009070611 Gentoo Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9.0.11) Gecko/2009060308 Ubuntu/9.04 (jaunty) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9.0.11) Gecko/2009061118 Fedora/3.0.11-1.fc10 Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; it-IT; rv:1.9.0.11) Gecko/2009060308 Linux Mint/7 (Gloria) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; fi-FI; rv:1.9.0.11) Gecko/2009060308 Ubuntu/9.04 (jaunty) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.11) Gecko/2009061118 Fedora/3.0.11-1.fc9 Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.11) Gecko/2009060310 Ubuntu/8.10 (intrepid) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.11) Gecko/2009060309 Linux Mint/5 (Elyssa) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.11) Gecko/2009060310 Linux Mint/6 (Felicia) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.11) Gecko/2009060308 Linux Mint/7 (Gloria) Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.11) Gecko/2009060309 Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.11) Gecko/2009060308 Ubuntu/9.04 (jaunty) Firefox/3.0.11 GTB5
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.11) Gecko/2009060214 Firefox/3.0.11
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.11) Gecko/2009062218 Gentoo Firefox/3.0.11
Mozilla/5.0 (X11; U; Slackware Linux i686; en-US; rv:1.9.0.10) Gecko/2009042315 Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.10) Gecko/2009042523 Ubuntu/9.04 (jaunty) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux x86_64; da-DK; rv:1.9.0.10) Gecko/2009042523 Ubuntu/9.04 (jaunty) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; tr-TR; rv:1.9.0.10) Gecko/2009042523 Ubuntu/9.04 (jaunty) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.10) Gecko/2009042513 Ubuntu/8.04 (hardy) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; hu-HU; rv:1.9.0.10) Gecko/2009042718 CentOS/3.0.10-1.el5.centos Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.10) Gecko/2009042708 Fedora/3.0.10-1.fc10 Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.10) Gecko/2009042513 Ubuntu/8.04 (hardy) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.10) Gecko/2009042523 Ubuntu/9.04 (jaunty) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.9.0.10) Gecko/2009042513 Linux Mint/5 (Elyssa) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.6) Gecko/2009020410 Fedora/3.0.6-1.fc10 Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042812 Gentoo Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042708 Fedora/3.0.10-1.fc10 Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042523 Ubuntu/8.10 (intrepid) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042523 Linux Mint/7 (Gloria) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042523 Linux Mint/6 (Felicia) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.10) Gecko/2009042513 Linux Mint/5 (Elyssa) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.10) Gecko/2009042523 Ubuntu/8.10 (intrepid) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.0.10) Gecko/2009042513 Ubuntu/8.04 (hardy) Firefox/3.0.10
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.0.10) Gecko/2009042523 Ubuntu/9.04 (jaunty) Firefox/3.0.10
Mozilla/5.0 (X11; U; OpenBSD amd64; en-US; rv:1.9.0.1) Gecko/2008081402 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; rv:1.9.0.1) Gecko/2008072820 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9.0.1) Gecko/2008071222 Ubuntu/hardy Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9.0.1) Gecko/2008071222 Ubuntu (hardy) Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9.0.1) Gecko/2008071222 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; ko-KR; rv:1.9.0.1) Gecko/2008071717 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9.0.1) Gecko/2008071717 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.1) Gecko/2008071222 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9.0.1) Gecko/2008070400 SUSE/3.0.1-1.1 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; es-ES; rv:1.9.0.1) Gecko/2008072820 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.1) Gecko/2008110312 Gentoo Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.1) Gecko/2008072820 Kubuntu/8.04 (hardy) Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.9.0.1) Gecko/2008072820 Firefox/3.0.1 FirePHP/0.1.1.2
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.1) Gecko/2008070400 SUSE/3.0.1-0.1 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux x86_64) Gecko/2008072820 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux i686; rv:1.9) Gecko/20080810020329 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.0.1) Gecko/2008071719 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.1) Gecko/2008071719 Firefox/3.0.1
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.1) Gecko/2008071222 Firefox/3.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.8) Gecko/2009032609 Firefox/3.0.0 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.0
Mozilla/6.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:2.0.0.0) Gecko/20061028 Firefox/3.0
Mozilla/5.0 (X11; U; SunOS sun4u; it-IT; ) Gecko/20080000 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.9) Gecko/2008060309 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.9) Gecko/2008061017 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.9) Gecko/2008061017 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; es-AR; rv:1.9) Gecko/2008061017 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; es-AR; rv:1.9) Gecko/2008061015 Ubuntu/8.04 (hardy) Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0) Gecko/2008061600 SUSE/3.0-1.2 Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9) Gecko/2008062908 Firefox/3.0 (Debian-3.0~rc2-2)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9) Gecko/2008062315 (Gentoo) Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9) Gecko/2008061317 (Gentoo) Firefox/3.0
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9) Gecko/2008061017 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; tr-TR; rv:1.9.0) Gecko/2008061600 SUSE/3.0-1.2 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; sk; rv:1.9.1) Gecko/20090630 Fedora/3.5-1.fc11 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; sk; rv:1.9) Gecko/2008061015 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; rv:1.9) Gecko/2008080808 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.9) Gecko/2008061812 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.5) Gecko/2008121622 Slackware/2.6.27-PiP Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.9) Gecko/2008061015 Firefox/3.0
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.9) Gecko/2008061015 Firefox/3.0
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.0.15) Gecko/2009101601 Firefox 2.1 (.NET CLR 3.5.30729)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1b1) Gecko/20061110 Firefox/2.0b3
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1) Gecko/20060918 Firefox/2.0b2
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1) Gecko/20060916 Firefox/2.0b2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080208 Firefox/2.0b2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1b2) Gecko/20060821 Firefox/2.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.1.1) Gecko/20061204 Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1) Gecko/20060918 Firefox/2.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1b2) Gecko/20060821 Firefox/2.0b2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.1b2) Gecko/20060821 Firefox/2.0b2
Mozilla/5.0 (BeOS; U; BeOS BePC; en-US; rv:1.8.1b2) Gecko/20060901 Firefox/2.0b2
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (X11; U; Linux i686; en_US; rv:1.8.1b1) Gecko/20060813 Firefox/2.0b1
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1b1) Gecko/20060707 Firefox/2.0b1
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Windows; U; Windows NT 5.1; ca; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1b1) Gecko/20060707 Firefox/2.0b1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1b1) Gecko/20060710 Firefox/2.0b1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1) Gecko/20061001 Firefox/2.0b (Swiftfox)
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8) Gecko/20060321 Firefox/2.0a1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20060319 Firefox/2.0a1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8) Gecko/20060322 Firefox/2.0a1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8) Gecko/20060320 Firefox/2.0a1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.9.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.4
Mozilla/5.0 (X11; U; SunOS sun4v; es-ES; rv:1.8.1.9) Gecko/20071127 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.9) Gecko/20071102 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; nl-NL; rv:1.8.1.9) Gecko/20071105 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071105 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071105 Fedora/2.0.0.9-1.fc7 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071103 Firefox/2.0.0.9 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071103 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071025 FreeBSD/i386 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.9) Gecko/20071105 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-GB; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; Windows NT 5.1; en-US; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 6.0; tr; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 6.0; it; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.2; da; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; sl; rv:1.8.1.9) Gecko/20071025 Firefox/2.0.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.17pre) Gecko/20080715 Firefox/2.0.0.8pre
Mozilla/5.0 (X11; U; x86_64 Linux; en_US; rv:1.8.16) Gecko/20071015 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Windows NT i686; fr; rv:1.9.0.1) Gecko/2008070206 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux x86_64; ru; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.8) Gecko/20071015 SUSE/2.0.0.8-1.1 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.12) Gecko/20080129 Firefox/2.0.0.8 (Debian-2.0.0.12-1)
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; hu; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.0.1) Gecko/2008070206 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.8) Gecko/20071030 Fedora/2.0.0.8-2.fc8 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20071201 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20071022 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20071019 Fedora/2.0.0.8-1.fc7 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20071008 FreeBSD/i386 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20071004 Firefox/2.0.0.8 (Debian-2.0.0.8-1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.8) Gecko/20061201 Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.8) Gecko/20071008 Ubuntu/7.10 (gutsy) Firefox/2.0.0.8
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.7) Gecko/20070930 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux x86_64; pl; rv:1.8.1.7) Gecko/20071009 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.7) Gecko/20070918 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.1.6) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.7) Gecko/20070923 Firefox/2.0.0.7 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.7) Gecko/20070921 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.6) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux i386; en-US; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux Gentoo; pl-PL; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Linux amd64; en-US; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; Gentoo Linux x86_64; pl-PL; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; it-IT; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en_US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (Windows; U; Windows NT 5.2; nl; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7
Mozilla/5.0 (X11; U; SunOS sun4u; pl-PL; rv:1.8.1.6) Gecko/20071217 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; SunOS sun4u; de-DE; rv:1.8.1.6) Gecko/20070805 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; SunOS i86pc; en-ZW; rv:1.8.1.6) Gecko/20071125 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD sparc64; en-US; rv:1.8.1.6) Gecko/20070816 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD sparc64; en-AU; rv:1.8.1.6) Gecko/20071225 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.6) Gecko/20070819 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.4) Gecko/20070704 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD i386; de-DE; rv:1.8.1.6) Gecko/20080429 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; OpenBSD amd64; en-US; rv:1.8.1.6) Gecko/20070817 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; NetBSD sparc64; fr-FR; rv:1.8.1.6) Gecko/20070822 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; NetBSD alpha; en-US; rv:1.8.1.6) Gecko/20080115 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.6) Gecko/20061201 Firefox/2.0.0.6 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux x86_64; de-DE; rv:1.8.1.6) Gecko/20070802 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux x86; en-US; rv:1.8.1.6) Gecko/20061201 Firefox/2.0.0.6 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.8.1.6) Gecko/20061201 Firefox/2.0.0.6 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.1.6) Gecko/20070803 Firefox/2.0.0.6 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070831 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070807 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.6) Gecko/20070804 Firefox/2.0.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.5) Gecko/20061201 Firefox/2.0.0.5 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; Ubuntu 7.04; de-CH; rv:1.8.1.5) Gecko/20070309 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.5) Gecko/20070718 Fedora/2.0.0.5-1.fc7 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008100320 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20070728 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20070725 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20070719 Firefox/2.0.0.5 (Debian-2.0.0.5-0etch1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20070718 Fedora/2.0.0.5-1.fc7 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.5) Gecko/20061201 Firefox/2.0.0.5 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.5) Gecko/20060911 SUSE/2.0.0.5-1.2 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.5) Gecko/20070718 Fedora/2.0.0.5-1.fc7 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-GB; rv:1.8.1.5) Gecko/20070718 Fedora/2.0.0.5-1.fc7 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-TW; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.2; de; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja-JP; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4pre) Gecko/20070509 Firefox/2.0.0.4pre (Swiftfox)
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.4) Gecko/20070622 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.4) Gecko/20070531 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.8.1.4) Gecko/20070622 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.4) Gecko/20070704 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; pl; rv:1.8.1.4) Gecko/20070611 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20070627 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20070604 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20070529 SUSE/2.0.0.4-6.1 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.4) Gecko/20070621 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.4) Gecko/20060601 Firefox/2.0.0.4 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20070602 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20070531 Firefox/2.0.0.4 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20070531 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20070530 Fedora/2.0.0.4-1.fc7 Firefox/2.0.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4 (Kubuntu)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.3pre) Gecko/20070307 Firefox/2.0.0.3pre (Swiftfox)
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.8.1.5) Gecko/20070713 Firefox/2.0.0.3C
Mozilla/5.0 (X11; U; SunOS sun4v; en-US; rv:1.8.1.3) Gecko/20070321 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.3) Gecko/20070321 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.8.1.3) Gecko/20070423 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.3) Gecko/20070505 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.8.1.3) Gecko/20070322 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.5) Gecko/2008122010 Firefox/2.0.0.3 (Debian-3.0.5-1)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.3) Gecko/20070415 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.3) Gecko/20070324 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.3) Gecko/20070322 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.3) Gecko/20061201 Firefox/2.0.0.3 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.8.1.3) Gecko/20070310 Firefox/2.0.0.3 (Debian-2.0.0.3-1)
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.3) Gecko/20061201 Firefox/2.0.0.3 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.1.3) Gecko/20060601 Firefox/2.0.0.3 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; nb-NO; rv:1.8.1.3) Gecko/20070310 Firefox/2.0.0.3 (Debian-2.0.0.3-1)
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.3) Gecko/20070410 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.3) Gecko/20070406 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.3) Gecko/20070310 Firefox/2.0.0.3 (Debian-2.0.0.3-2)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.8.1.2pre) Gecko/20061023 SUSE/2.0.0.1-0.1 Firefox/2.0.0.2pre
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.2pre) Gecko/20061023 SUSE/2.0.0.1-0.1 Firefox/2.0.0.2pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.2pre) Gecko/20070118 Firefox/2.0.0.2pre
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.22pre) Gecko/20090327 Ubuntu/8.04 (hardy) Firefox/2.0.0.22pre
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.22pre) Gecko/20090327 Ubuntu/7.10 (gutsy) Firefox/2.0.0.22pre
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.22pre) Gecko/20090327 Ubuntu/7.10 (gutsy) Firefox/2.0.0.22pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.21
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.20) Gecko/20090108 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.20) Gecko/20081217 Firefox(2.0.0.20)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.20) Gecko/20090206 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.8.1.20) Gecko/20090413 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.8.1.20) Gecko/20090225 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 GTB5
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-GB; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-TW; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 6.0; ko; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 ( .NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; cs; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-GB; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.20
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.2) Gecko/20070226 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux; en-US; rv:1.8.1.2) Gecko/20070219 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux x86_64; it; rv:1.8.1.2) Gecko/20060601 Firefox/2.0.0.2 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.8.1.2) Gecko/20061023 SUSE/2.0.0.2-1.1 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1.2) Gecko/20070220 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.2) Gecko/20060601 Firefox/2.0.0.2 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; hu; rv:1.8.1.2) Gecko/20070220 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.2) Gecko/20060601 Firefox/2.0.0.2 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.2) Gecko/20070225 Firefox/2.0.0.2 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.2) Gecko/20070220 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.2) Gecko/20060601 Firefox/2.0.0.2 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; en; rv:1.8.1.2) Gecko/20070220 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070317 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070314 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070226 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070225 Firefox/2.0.0.2 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070221 SUSE/2.0.0.2-6.1 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070220 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20061201 Firefox/2.0.0.2 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20061201 Firefox/2.0.0.2
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.19) Gecko/20081213 SUSE/2.0.0.19-0.1 Firefox/2.0.0.19
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.19) Gecko/20081216 Ubuntu/7.10 (gutsy) Firefox/2.0.0.19
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.19) Gecko/20081230 Firefox/2.0.0.19
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.19) Gecko/20081216 Fedora/2.0.0.19-1.fc8 Firefox/2.0.0.19 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.19) Gecko/20081213 SUSE/2.0.0.19-0.1 Firefox/2.0.0.19
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.19) Gecko/20081213 SUSE/2.0.0.19-0.1 Firefox/2.0.0.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.19
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.8.1.20) Gecko/20081217 Firefox/2.0.0.19
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.8.1.19) Gecko/20081201 Firefox/2.0.0.19
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.18) Gecko/20081113 Ubuntu/8.04 (hardy) Firefox/2.0.0.18
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.18) Gecko/20081112 Fedora/2.0.0.18-1.fc8 Firefox/2.0.0.18
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.18) Gecko/20081113 Ubuntu/8.04 (hardy) Firefox/2.0.0.18
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.18) Gecko/20081112 Fedora/2.0.0.18-1.fc8 Firefox/2.0.0.18
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.18) Gecko/20080921 SUSE/2.0.0.18-0.1 Firefox/2.0.0.18
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs; rv:1.8.1.18) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.4; en-US; rv:1.9.0.4) Gecko/20081029 Firefox/2.0.0.18
Mozilla/5.0 (X11; U; Linux sparc64; en-US; rv:1.8.1.17) Gecko/20081108 Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080924 Ubuntu/8.04 (hardy) Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080922 Ubuntu/7.10 (gutsy) Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080921 SUSE/2.0.0.17-1.2 Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080703 Mandriva/2.0.0.17-1.1mdv2008.1 (2008.1) Firefox/2.0.0.17
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.3) Gecko/2008092417 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.0; fr; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (Windows; U; Windows NT 5.0; de; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17
Mozilla/5.0 (U; Windows NT 5.1; en-GB; rv:1.8.1.17) Gecko/20080808 Firefox/2.0.0.17
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.16) Gecko/20080812 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.8.1.16) Gecko/20080715 Fedora/2.0.0.16-1.fc8 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.16) Gecko/20080719 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.16) Gecko/20080718 Ubuntu/8.04 (hardy) Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080722 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080718 Ubuntu/8.04 (hardy) Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080715 Ubuntu/7.10 (gutsy) Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080715 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.16) Gecko/20080715 Fedora/2.0.0.16-1.fc8 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.16) Gecko/20080715 Ubuntu/7.10 (gutsy) Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.16) Gecko/20080718 Ubuntu/8.04 (hardy) Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686 (x86_64); fr; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.16) Gecko/20080716 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; WinNT4.0; en-US; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.8.1.16) Gecko/20080702 Firefox/2.0.0.16
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.15) Gecko/20080702 Ubuntu/8.04 (hardy) Firefox/2.0.0.15
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.15) Gecko/20080702 Ubuntu/8.04 (hardy) Firefox/2.0.0.15
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.15) Gecko/20061201 Firefox/2.0.0.15 (Ubuntu-feisty)
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.9.1.2) Gecko/20090729 Firefox/2.0.0.15
Mozilla/5.0 (Windows; U; Windows NT 5.2; sk; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; de; rv:1.8.1.15) Gecko/20080623 Firefox/2.0.0.15
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.14) Gecko/20080418 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux x86_64; hu; rv:1.8.1.14) Gecko/20080416 Fedora/2.0.0.14-1.fc7 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.6) Gecko/2010012717 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux ppc64; en-US; rv:1.8.1.14) Gecko/20080418 Ubuntu/7.10 (gutsy) Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.14) Gecko/20080420 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.1.14) Gecko/20080416 Fedora/2.0.0.14-1.fc7 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.14) Gecko/20080419 Ubuntu/8.04 (hardy) Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080525 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080508 Ubuntu/8.04 (hardy) Firefox/2.0.0.14 (Linux Mint)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080428 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080423 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080417 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080416 Fedora/2.0.0.14-1.fc8 Firefox/2.0.0.14 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080410 SUSE/2.0.0.14-0.4 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20061201 Firefox/2.0.0.14 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.14) Gecko/20080418 Ubuntu/7.10 (gutsy) Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.14) Gecko/20080410 SUSE/2.0.0.14-0.1 Firefox/2.0.0.14
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.14) Gecko/20080417 Firefox/2.0.0.14
User-Agent:Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.8.1.13) Gecko/20080325 Ubuntu/7.10 (gutsy) Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.13) Gecko/20080208 Mandriva/2.0.0.13-1mdv2008.1 (2008.1) Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.13) Gecko/20080330 Ubuntu/7.10 (gutsy) Firefox/2.0.0.13 (Linux Mint)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.13) Gecko/20080325 Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.13) Gecko/20080316 SUSE/2.0.0.13-1.1 Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.13) Gecko/20080316 SUSE/2.0.0.13-0.1 Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.13) Gecko/20061201 Firefox/2.0.0.13 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.13) Gecko/20080325 Ubuntu/7.10 (gutsy) Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686; bg; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (X11; U; Linux i686 Gentoo; en-US; rv:1.8.1.13) Gecko/20080413 Firefox/2.0.0.13 (Gentoo Linux)
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-ES; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; de; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-GB; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-AR; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.1) Gecko/2008070208 Firefox/2.0.0.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.13
Mozilla/5.0 (compatible; N; Windows NT 5.1; en;) Gecko/20080325 Firefox/2.0.0.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.12pre) Gecko/20080122 Firefox/2.0.0.12pre
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12; MEGAUPLOAD 2.0
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.12) Gecko/20080210 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.0.1) Gecko/2008072610 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.12) Gecko/20080214 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.12) Gecko/20080203 SUSE/2.0.0.12-0.1 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.8.1.12) Gecko/20080207 Ubuntu/7.10 (gutsy) Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-GB; rv:1.8.1.12) Gecko/20080203 SUSE/2.0.0.12-0.1 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.8.1.12) Gecko/20080208 Fedora/2.0.0.12-1.fc8 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.8.1.12) Gecko/20080203 SUSE/2.0.0.12-6.1 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux x86; sv-SE; rv:1.8.1.12) Gecko/20080207 Ubuntu/8.04 (hardy) Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.12) Gecko/20080208 Fedora/2.0.0.12-1.fc8 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.8.1.6) Gecko/20080208 Ubuntu/7.10 (gutsy) Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.1.12) Gecko/20080213 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.1.12) Gecko/20080207 Ubuntu/7.10 (gutsy) Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.14) Gecko/20080419 Ubuntu/8.04 (hardy) Firefox/2.0.0.12 MEGAUPLOAD 1.0
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080208 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080208 Fedora/2.0.0.12-1.fc8 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080201 Firefox/2.0.0.12 Mnenhy/0.7.5.666
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.12) Gecko/20080129 Firefox/2.0.0.12 (Debian-2.0.0.12-0etch1)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.12) Gecko/20080203 SUSE/2.0.0.12-2.1 Firefox/2.0.0.12
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.12) Gecko/20080207 Ubuntu/7.10 (gutsy) Firefox/2.0.0.12
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1.11) Gecko/20080118 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.1.4) Gecko/20071127 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; zh-TW; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.11) Gecko/20071201 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.11) Gecko/20070914 Mandriva/2.0.0.11-1.1mdv2008.0 (2008.0) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; ru-RU; rv:1.8.1.11) Gecko/20071201 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; pt-PT; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.8.1.11) Gecko/20071128 Firefox/2.0.0.11 (Debian-2.0.0.11-1)
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; ja-JP; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.8) Gecko/20071022 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.6) Gecko/20071008 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; en; rv:1.8.1.11) Gecko/20071216 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.11) Gecko/20080201 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.11) Gecko/20071217 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.11) Gecko/20071204 Firefox/2.0.0.11
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.10) Gecko/20061201 Firefox/2.0.0.10 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.10) Gecko/20071213 Fedora/2.0.0.10-3.fc8 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.10) Gecko/20071128 Fedora/2.0.0.10-2.fc7 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1.10) Gecko/20071126 Ubuntu/7.10 (gutsy) Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.17) Gecko/20080827 Firefox/2.0.0.10 (Debian-2.0.0.17-0etch1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071213 Fedora/2.0.0.10-3.fc8 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071203 Ubuntu/7.10 (gutsy) Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071128 Fedora/2.0.0.10-2.fc7 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071126 Ubuntu/7.10 (gutsy) Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071115 Firefox/2.0.0.10 (Debian-2.0.0.10-0etch1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071115 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20071015 SUSE/2.0.0.10-0.2 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20061201 Firefox/2.0.0.10 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.10) Gecko/20060601 Firefox/2.0.0.10 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.10) Gecko/20071126 Ubuntu/7.10 (gutsy) Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.10) Gecko/20071126 Ubuntu/7.10 (gutsy) Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.10) Gecko/20071115 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.10) Gecko/20071015 SUSE/2.0.0.10-0.2 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.1.10) Gecko/20071015 SUSE/2.0.0.10-0.1 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.10
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.8.1.1) Gecko/20060601 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux x86_64; fi-FI; rv:1.8.1.1) Gecko/20060601 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.1) Gecko/20060601 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.8.1.1) Gecko/20061208 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.1.1) Gecko/20070311 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; hu; rv:1.8.1.1) Gecko/20061208 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.1.1) Gecko/20060601 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.3) Gecko/20061201 Firefox/2.0.0.1 (Ubuntu-feisty)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20070224 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20070110 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20061220 Firefox/2.0.0.1 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20061208 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20061205 Firefox/2.0.0.1 (Debian-2.0.0.1+dfsg-2)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20061205 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20060601 Firefox/2.0.0.1 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.2pre) Gecko/20061023 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.1.1) Gecko/20061208 Firefox/2.0.0.1
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.1) Gecko/20061220 Firefox/2.0.0.1 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.1.1) Gecko/20061205 Firefox/2.0.0.1 (Debian-2.0.0.1+dfsg-2)
Mozilla/5.0 (X11; U; SunOS sun4u; de-DE; rv:1.9.1b4) Gecko/20090428 Firefox/2.0.0.0
Mozilla/5.0 (X11; Linux x86_64; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (X11; Linux i686; U; pl; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.1.4) Gecko/20070509 Firefox/2.0.0
Mozilla/5.0 (Windows NT 6.1; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Windows NT 6.0; U; tr; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Windows NT 6.0; U; sv; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Windows NT 6.0; U; hu; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Macintosh; PPC Mac OS X; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (Linux i686; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0
Mozilla/5.0 (X11;U;Linux i686;en-US;rv:1.8.1) Gecko/2006101022 Firefox/2.0
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1) Gecko/20061228 Firefox/2.0
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.1) Gecko/20061024 Firefox/2.0
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.8.1) Gecko/20061211 Firefox/2.0
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.8.1) Gecko/20061024 Firefox/2.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1) Gecko/20061202 Firefox/2.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1) Gecko/20061128 Firefox/2.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1) Gecko/20061122 Firefox/2.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1) Gecko/20061023 SUSE/2.0-37 Firefox/2.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1) Gecko/20060601 Firefox/2.0 (Ubuntu-edgy)
Mozilla/5.0 (X11; U; Linux x86-64; en-US; rv:1.8.1) Gecko/20061010 Firefox/2.0
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.8.1) Gecko/20061010 Firefox/2.0
Mozilla/5.0 (X11; U; Linux i686; tr-TR; rv:1.8.1) Gecko/20061023 SUSE/2.0-30 Firefox/2.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061127 Firefox/2.0 (Gentoo Linux)
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061127 Firefox/2.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061024 Firefox/2.0 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061010 Firefox/2.0 Ubuntu
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061010 Firefox/2.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.1) Gecko/20061003 Firefox/2.0 Ubuntu
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.1) Gecko/20061010 Firefox/2.0
Mozilla/5.0 (Windows; U; Windows NT 5.0; ; rv:1.8.0.7) Gecko/20060917 Firefox/1.9.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; ; rv:1.8.0.10) Gecko/20070216 Firefox/1.9.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; ; rv:1.8.0.1) Gecko/20060111 Firefox/1.9.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9a1) Gecko/20060112 Firefox/1.6a1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20060217 Firefox/1.6a1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20060117 Firefox/1.6a1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a1) Gecko/20051215 Firefox/1.6a1 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.9a1) Gecko/20060127 Firefox/1.6a1
Mozilla/5.0 (Windows; U; Windows NT 5.2 x64; en-US; rv:1.9a1) Gecko/20060214 Firefox/1.6a1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9a1) Gecko/20060323 Firefox/1.6a1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9a1) Gecko/20060121 Firefox/1.6a1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9a1) Gecko/20051220 Firefox/1.6a1
Mozilla/5.0 (Windows NT 5.1; rv:1.9a1) Gecko/20060217 Firefox/1.6a1
Mozilla/5.0 (BeOS; U; BeOS BePC; en-US; rv:1.9a1) Gecko/20051002 Firefox/1.6a1
Mozilla/5.0 (X11; U; OpenBSD amd64; en-US; rv:1.8.0.9) Gecko/20070101 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.9) Gecko/20070126 Ubuntu/dapper-security Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.9) Gecko/20071025 Firefox/1.5.0.9 (Debian-2.0.0.9-2)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20070316 CentOS/1.5.0.9-10.el5.centos Firefox/1.5.0.9 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20070126 Ubuntu/dapper-security Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20070102 Ubuntu/dapper-security Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20061221 Fedora/1.5.0.9-1.fc5 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20061219 Fedora/1.5.0.9-1.fc6 Firefox/1.5.0.9 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20061215 Red Hat/1.5.0.9-0.1.el4 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20060911 SUSE/1.5.0.9-3.2 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.9) Gecko/20060911 SUSE/1.5.0.9-0.2 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.9) Gecko/20061219 Fedora/1.5.0.9-1.fc6 Firefox/1.5.0.9 pango-text
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.0.9) Gecko/20061206 Firefox/1.5.0.9
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.8) Gecko/20061110 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.8.0.8) Gecko/20061108 Fedora/1.5.0.8-1.fc5 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.8) Gecko/20061213 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20061115 Ubuntu/dapper-security Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20061110 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20061107 Fedora/1.5.0.8-1.fc6 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20060911 SUSE/1.5.0.8-0.2 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.8) Gecko/20060802 Mandriva/1.5.0.8-1.1mdv2007.0 (2007.0) Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.8) Gecko/20061115 Ubuntu/dapper-security Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.8) Gecko/20060911 SUSE/1.5.0.8-0.2 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; Linux Gentoo i686; pl; rv:1.8.0.8) Gecko/20061219 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.8.0.8) Gecko/20061210 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; FreeBSD amd64; en-US; rv:1.8.0.8) Gecko/20061116 Firefox/1.5.0.8
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.8.0.8) Gecko/20061025 Firefox/1.5.0.8
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.0.7) Gecko/20060915 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.7) Gecko/20061017 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.7) Gecko/20060920 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; NetBSD amd64; fr-FR; rv:1.8.0.7) Gecko/20061102 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.7) Gecko/20060924 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.7) Gecko/20060921 Ubuntu/dapper-security Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.7) Gecko/20060919 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.7) Gecko/20060911 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; sk; rv:1.8.0.7) Gecko/20060909 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.8.0.7) Gecko/20060921 Ubuntu/dapper-security Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.7) Gecko/20060914 Firefox/1.5.0.7 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.0.7) Gecko/20060914 Firefox/1.5.0.7 (Swiftfox) Mnenhy/0.7.4.666
Mozilla/5.0 (X11; U; Linux i686; ko-KR; rv:1.8.0.7) Gecko/20060913 Fedora/1.5.0.7-1.fc5 Firefox/1.5.0.7 pango-text
Mozilla/5.0 (X11; U; Linux i686; hu; rv:1.8.0.7) Gecko/20060911 SUSE/1.5.0.7-0.1 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.7) Gecko/20060921 Ubuntu/dapper-security Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.7) Gecko/20060909 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.0.7) Gecko/20060830 Firefox/1.5.0.7 (Debian-1.5.dfsg+1.5.0.7-1~bpo.1)
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.0.7) Gecko/20060909 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; en-ZW; rv:1.8.0.7) Gecko/20061018 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.7) Gecko/20061014 Firefox/1.5.0.7
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060905 Fedora/1.5.0.6-10 Firefox/1.5.0.6 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060808 Fedora/1.5.0.6-2.fc5 Firefox/1.5.0.6 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060807 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060803 Firefox/1.5.0.6 (Swiftfox)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060802 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060728 SUSE/1.5.0.6-0.1 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6 (Debian-1.5.dfsg+1.5.0.6-4)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6 (Debian-1.5.dfsg+1.5.0.6-1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.0.6) Gecko/20060808 Fedora/1.5.0.6-2.fc5 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.6) Gecko/20060808 Fedora/1.5.0.6-2.fc5 Firefox/1.5.0.6 pango-text
Mozilla/5.0 (X11; U; Linux i686 (x86_64); zh-TW; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686 (x86_64); nl; rv:1.8.0.6) Gecko/20060728 SUSE/1.5.0.6-1.2 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.6) Gecko/20060728 SUSE/1.5.0.6-1.2 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686 (x86_64); de; rv:1.8.0.6) Gecko/20060728 SUSE/1.5.0.6-1.3 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; Linux i686 (x86_64); de; rv:1.8.0.6) Gecko/20060728 Firefox/1.5.0.6
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.8.0.5) Gecko/20060728 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.5) Gecko/20060819 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; NetBSD i386; en-US; rv:1.8.0.5) Gecko/20060818 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.5) Gecko/20060911 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5 Mnenhy/0.7.4.666
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060831 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060820 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060813 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060812 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060806 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060803 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060801 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.5) Gecko/20060719 Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.5) Gecko/20060731 Ubuntu/dapper-security Firefox/1.5.0.5
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.5) Gecko/20060726 Red Hat/1.5.0.5-0.el4.1 Firefox/1.5.0.5 pango-text
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.4) Gecko/20060628 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; ru; rv:1.8.0.4) Gecko/20060508 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.4) Gecko/20060614 Fedora/1.5.0.4-1.2.fc5 Firefox/1.5.0.4 pango-text Mnenhy/0.7.4.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.4) Gecko/20060527 SUSE/1.5.0.4-1.7 Firefox/1.5.0.4 Mnenhy/0.7.4.0
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; es-AR; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060716 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060711 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060704 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060629 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060614 Fedora/1.5.0.4-1.2.fc5 Firefox/1.5.0.4 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060613 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060608 Ubuntu/dapper-security Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060527 SUSE/1.5.0.4-1.3 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060508 Firefox/1.5.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.4) Gecko/20060406 Firefox/1.5.0.4 (Debian-1.5.dfsg+1.5.0.4-1)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.3) Gecko/20060523 Ubuntu/dapper Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.3) Gecko/20060522 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.8.0.3) Gecko/20060523 Ubuntu/dapper Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.3) Gecko/20060523 Ubuntu/dapper Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.3) Gecko/20060504 Fedora/1.5.0.3-1.1.fc5 Firefox/1.5.0.3 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.3) Gecko/20060425 SUSE/1.5.0.3-7 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.3) Gecko/20060326 Firefox/1.5.0.3 (Debian-1.5.dfsg+1.5.0.3-2)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.3) Gecko/20060425 SUSE/1.5.0.3-7 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686 (x86_64); ru; rv:1.8.0.3) Gecko/20060425 SUSE/1.5.0.3-7 Firefox/1.5.0.3
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.4) Gecko/20060508 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; es-ES; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Win 9x 4.90; en-US; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; es-ES; rv:1.8.0.3) Gecko/20060426 Firefox/1.5.0.3
Mozilla/5.0 (Windows; U; Windows NT 4.0; en-US; rv:1.8.0.2) Gecko/20060418 Firefox/1.5.0.2;
Mozilla/5.0 (X11; U; OpenBSD sparc64; pl-PL; rv:1.8.0.2) Gecko/20060429 Firefox/1.5.0.2
Mozilla/5.0 (X11; U; OpenBSD sparc64; en-CA; rv:1.8.0.2) Gecko/20060429 Firefox/1.5.0.2
Mozilla/5.0 (X11; U; Linux x86_64; de-AT; rv:1.8.0.2) Gecko/20060422 Firefox/1.5.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.2) Gecko/20060419 Fedora/1.5.0.2-1.2.fc5 Firefox/1.5.0.2 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.2) Gecko Firefox/1.5.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050921 Firefox/1.5.0.2 Mandriva/1.0.6-15mdk (2006.0)
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.8.0.2) Gecko/20060414 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.2) Gecko/20060419 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.2) Gecko/20060406 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.2) Gecko/20060309 Firefox/1.5.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.2) Gecko/20060308 Firefox/1.5.0.2
Mozilla/5.0 (X11; U; Linux i686; sv-SE; rv:1.8.0.13pre) Gecko/20071126 Ubuntu/dapper-security Firefox/1.5.0.13pre
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.13pre) Gecko/20080207 Ubuntu/dapper-security Firefox/1.5.0.13pre
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.12) Gecko/20080419 CentOS/1.5.0.12-0.15.el4.centos Firefox/1.5.0.12 pango-text
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.12) Gecko/20070718 Red Hat/1.5.0.12-3.el5 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.12) Gecko/20070530 Fedora/1.5.0.12-1.fc6 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; nl; rv:1.8.0.12) Gecko/20070601 Ubuntu/dapper-security Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20071126 Fedora/1.5.0.12-7.fc6 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070719 CentOS/1.5.0.12-0.3.el4.centos Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070530 Fedora/1.5.0.12-1.fc6 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.12) Gecko/20070529 Red Hat/1.5.0.12-0.1.el4 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.8.0.12) Gecko/20070718 Fedora/1.5.0.12-4.fc6 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.12) Gecko/20070719 CentOS/1.5.0.12-3.el5.centos Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.12) Gecko/20080326 CentOS/1.5.0.12-14.el5.centos Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.12) Gecko/20070731 Ubuntu/dapper-security Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12 (.NET CLR 3.5.30729)
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 5.1; ko; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.0.11) Gecko/20070327 Ubuntu/dapper-security Firefox/1.5.0.11
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (X11; U; Linux i686; de; rv:1.8.0.11) Gecko/20070327 Ubuntu/dapper-security Firefox/1.5.0.11
Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.0.11) Gecko/20070327 Ubuntu/dapper-security Firefox/1.5.0.11
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; hu; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; fi; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; pl; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; it; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; fr; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; es-ES; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 5.0; de; rv:1.8.0.11) Gecko/20070312 Firefox/1.5.0.11
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.0.10pre) Gecko/20070207 Firefox/1.5.0.10pre
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.10pre) Gecko/20070211 Firefox/1.5.0.10pre
Mozilla/5.0 (X11; U; OpenBSD ppc; en-US; rv:1.8.0.10) Gecko/20070223 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.10) Gecko/20070409 CentOS/1.5.0.10-2.el5.centos Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; zh-TW; rv:1.8.0.10) Gecko/20070508 Fedora/1.5.0.10-1.fc5 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; ja; rv:1.8.0.10) Gecko/20070510 Fedora/1.5.0.10-6.fc6 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.10) Gecko/20070223 Fedora/1.5.0.10-1.fc5 Firefox/1.5.0.10 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070510 Fedora/1.5.0.10-6.fc6 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070409 CentOS/1.5.0.10-2.el5.centos Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070302 Ubuntu/dapper-security Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070226 Red Hat/1.5.0.10-0.1.el4 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070226 Fedora/1.5.0.10-1.fc6 Firefox/1.5.0.10 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070223 CentOS/1.5.0.10-0.1.el4.centos Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070221 Red Hat/1.5.0.10-0.1.el4 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070216 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20060911 SUSE/1.5.0.10-0.2 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; en-CA; rv:1.8.0.10) Gecko/20070223 Fedora/1.5.0.10-1.fc5 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.8.0.10) Gecko/20070313 Fedora/1.5.0.10-5.fc6 Firefox/1.5.0.10
Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US; rv:1.8.0.10) Gecko/20060911 SUSE/1.5.0.10-0.2 Firefox/1.5.0.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE; rv:1.8.0.10) Gecko/20070216 Firefox/1.5.0.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja; rv:1.8.0.10) Gecko/20070216 Firefox/1.5.0.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.8.0.10) Gecko/20070216 Firefox/1.5.0.10
Mozilla/5.0 (ZX-81; U; CP/M86; en-US; rv:1.8.0.1) Gecko/20060111 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8.0.1) Gecko/20060206 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; SunOS sun4u; en-GB; rv:1.8.0.1) Gecko/20060206 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.8.0.1) Gecko/20060213 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux x86_64; pl-PL; rv:1.8) Gecko/20051128 SUSE/1.5-0.1 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.0.1) Gecko/20060313 Fedora/1.5.0.1-9 Firefox/1.5.0.1 pango-text
Mozilla/5.0 (X11; U; Linux i686; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.1) Gecko/20060313 Fedora/1.5.0.1-9 Firefox/1.5.0.1 pango-text Mnenhy/0.7.3.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.1) Gecko/20060201 Firefox/1.5.0.1 (Swiftfox) Mnenhy/0.7.3.0
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1 Ubuntu
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.8.0.1) Gecko/20060313 Fedora/1.5.0.1-9 Firefox/1.5.0.1 pango-text Mnenhy/0.7.3.0
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; es-ES; rv:1.8.0.1) Gecko/20060124 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.7) Gecko/20060911 Red Hat/1.5.0.7-0.1.el4 Firefox/1.5.0.1 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.1) Gecko/20060404 Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.1) Gecko/20060324 Ubuntu/dapper Firefox/1.5.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.1) Gecko/20060313 Fedora/1.5.0.1-9 Firefox/1.5.0.1 pango-text
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.1) Gecko/20060313 Debian/1.5.dfsg+1.5.0.1-4 Firefox/1.5.0.1
Mozilla/5.0 (X11; Linux i686; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Windows NT 5.2; U; de; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Windows NT 5.1; U; tr; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Windows NT 5.1; U; de; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Windows 98; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (Macintosh; PPC Mac OS X; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.8) Gecko/20051130 Firefox/1.5
Mozilla/5.0 (X11; U; NetBSD i386; en-US; rv:1.8) Gecko/20060104 Firefox/1.5
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.8) Gecko/20051231 Firefox/1.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8) Gecko/20051212 Firefox/1.5
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8) Gecko/20051201 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.8) Gecko/20051111 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8) Gecko/20051111 Firefox/1.5 Ubuntu
Mozilla/5.0 (X11; U; Linux i686; pl; rv:1.8) Gecko/20051111 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; lt; rv:1.6) Gecko/20051114 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; lt-LT; rv:1.6) Gecko/20051114 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; it; rv:1.8) Gecko/20060113 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8) Gecko/20060110 Debian/1.5.dfsg-4 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.8) Gecko/20051111 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.8) Gecko/20051111 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060806 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060130 Ubuntu/1.5.dfsg-4ubuntu6 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060119 Debian/1.5.dfsg-4ubuntu3 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060118 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060111 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8) Gecko/20060110 Debian/1.5.dfsg-4 Firefox/1.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8b5) Gecko/20051008 Fedora/1.5-0.5.0.beta2 Firefox/1.4.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b5) Gecko/20051006 Firefox/1.4.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8b4) Gecko/20050908 Firefox/1.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.21) Gecko/20090403 Firefox/1.1.16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.13) Gecko/20060413 Red Hat/1.0.8-1.4.1 Firefox/1.0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.13) Gecko/20060411 Firefox/1.0.8 SUSE/1.0.8-0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20060410 Firefox/1.0.8 Mandriva/1.0.6-16.5.20060mdk (2006.0)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.7.13) Gecko/20060418 Fedora/1.0.8-1.1.fc4 Firefox/1.0.8
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.7.13) Gecko/20060418 Firefox/1.0.8 (Ubuntu package 1.0.8)
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.7.13) Gecko/20060411 Firefox/1.0.8 SUSE/1.0.8-0.2
Mozilla/5.0 (X11; U; Linux i686; da-DK; rv:1.7.13) Gecko/20060411 Firefox/1.0.8 SUSE/1.0.8-0.2
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.12) Gecko/20051105 Firefox/1.0.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.13) Gecko/20060410 Firefox/1.0.8
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.7.13) Gecko/20060410 Firefox/1.0.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7.13) Gecko/20060410 Firefox/1.0.8
Mozilla/5.0 (X11; U; x86_64 Linux; en_US; rv:1.7.12) Gecko/20050915 Firefox/1.0.7
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.7.12) Gecko/20050927 Firefox/1.0.7
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.7.12) Gecko/20050922 Firefox/1.0.7
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.7.12) Gecko/20051121 Firefox/1.0.7 (Nexenta package 1.0.7)
Mozilla/5.0 (X11; U; Linux x86_64; fr; rv:1.7.12) Gecko/20050922 Fedora/1.0.7-1.1.fc4 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20060202 CentOS/1.0.7-1.4.3.centos4 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20051218 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20051127 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20051010 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.12) Gecko/20050922 Fedora/1.0.7-1.1.fc4 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.7.12) Gecko/20051222 Firefox/1.0.7
Mozilla/5.0 (X11; U; Linux ppc; da-DK; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; it-IT; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; hu-HU; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.12) Gecko/20051010 Firefox/1.0.7 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.12) Gecko/20050922 Firefox/1.0.7 (Debian package 1.0.7-1)
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.12) Gecko/20050922 Fedora/1.0.7-1.1.fc4 Firefox/1.0.7
Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.7.10) Gecko/20050919 (No IDN) Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.10) Gecko/20050724 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.7.10) Gecko/20050717 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.7.10) Gecko/20050730 Firefox/1.0.6 (Debian package 1.0.6-2)
Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.7.10) Gecko/20050717 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.10) Gecko/20050721 Firefox/1.0.6 (Ubuntu package 1.0.6)
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.7.10) Gecko/20050716 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20051111 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20051106 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050920 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050918 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050911 Firefox/1.0.6 (Debian package 1.0.6-5)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050815 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050811 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050721 Firefox/1.0.6 (Ubuntu package 1.0.6)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050720 Fedora/1.0.6-1.1.fc4.k12ltsp.4.4.0 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050720 Fedora/1.0.6-1.1.fc3 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050719 Red Hat/1.0.6-1.4.1 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050716 Firefox/1.0.6
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20050715 Firefox/1.0.6 SUSE/1.0.6-16
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Windows; U; WinNT4.0; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Windows NT5.1; en; rv:1.7.10) Gecko/20050716 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.7.10) Gecko/20050716 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5 (ax)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Windows; U; Win 9x 4.90; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7.9) Gecko/20050711 Firefox/1.0.5
Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.7.8) Gecko/20050512 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.8) Gecko/20050511 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.8) Gecko/20050524 Fedora/1.0.4-4 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.7.10) Gecko/20050925 Firefox/1.0.4 (Debian package 1.0.4-2sarge5)
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.7.8) Gecko/20050511 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; fr-FR; rv:1.7.10) Gecko/20050925 Firefox/1.0.4 (Debian package 1.0.4-2sarge5)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050610 Firefox/1.0.4 (Debian package 1.0.4-3)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050524 Fedora/1.0.4-4 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050523 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050517 Firefox/1.0.4 (Debian package 1.0.4-2)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050513 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050513 Fedora/1.0.4-1.3.1 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050512 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050511 Firefox/1.0.4 SUSE/1.0.4-1.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.8) Gecko/20050511 Firefox/1.0.4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.12) Gecko/20051010 Firefox/1.0.4 (Ubuntu package 1.0.7)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20070530 Firefox/1.0.4 (Debian package 1.0.4-2sarge17)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20070116 Firefox/1.0.4 (Debian package 1.0.4-2sarge15)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20061113 Firefox/1.0.4 (Debian package 1.0.4-2sarge13)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.10) Gecko/20060927 Firefox/1.0.4 (Debian package 1.0.4-2sarge12)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.7) Gecko/20050421 Firefox/1.0.3 (Debian package 1.0.3-2)
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.7) Gecko/20060303 Firefox/1.0.3
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.7) Gecko/20050420 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; it-IT; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.7) Gecko/20050414 Firefox/1.0.3 (ax)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; da-DK; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; fr-FR; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Win98; fr-FR; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Win98; es-ES; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (Windows; U; Win98; de-DE; rv:1.7.7) Gecko/20050414 Firefox/1.0.3
Mozilla/5.0 (X11; U; Linux x86_64; nl-NL; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (X11; U; Linux i686; ru-RU; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2
Mozilla/5.0 (X11; U; Linux i686; de-AT; rv:1.7.6) Gecko/20050325 Firefox/1.0.2 (Debian package 1.0.2-1)
Mozilla/5.0 (Windows; U; Windows NT 5.2; de-DE; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr-TR; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl-NL; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; it-IT; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2 (ax)
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-GB; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7.6) Gecko/20050321 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Win98; fr-FR; rv:1.7.6) Gecko/20050318 Firefox/1.0.2
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2 (ax)
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050317 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050311 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050310 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.7.6) Gecko/20050322 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.7.6) Gecko/20050306 Firefox/1.0.1 (Debian package 1.0.1-2)
Mozilla/5.0 (X11; U; Linux i686; cs-CZ; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; WinNT4.0; de-DE; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6) Gecko/20050223 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7.6) Gecko/20050223 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7.6) Gecko/20050223 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.6) Gecko/20040206 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Win98; fr-FR; rv:1.7.6) Gecko/20050226 Firefox/1.0.1
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.7.6) Gecko/20050225 Firefox/1.0.1
Mozilla/5.0 (X11; U; Linux i686; hu; rv:1.8b4) Gecko/20050827 Firefox/1.0+
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8b4) Gecko/20050729 Firefox/1.0+
Mozilla/5.0 (X11; U; SunOS i86pc; en-US; rv:1.7.5) Gecko/20041109 Firefox/1.0
Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.6) Gecko/20050405 Firefox/1.0 (Ubuntu package 1.0.2)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.6) Gecko/20050405 Firefox/1.0 (Ubuntu package 1.0.2)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20050814 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20050221 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20050210 Firefox/1.0 (Debian package 1.0+dfsg.1-6)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041218 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041215 Firefox/1.0 Red Hat/1.0-12.EL4
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041204 Firefox/1.0 (Debian package 1.0.x.2-1)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041128 Firefox/1.0 (Debian package 1.0-4)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041117 Firefox/1.0 (Debian package 1.0-2.0.0.45.linspire0.4)
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7.5) Gecko/20041107 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.7.6) Gecko/20050405 Firefox/1.0 (Ubuntu package 1.0.2)
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.7.5) Gecko/20041108 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; de-AT; rv:1.7.5) Gecko/20041128 Firefox/1.0 (Debian package 1.0-4)
Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7.5) Gecko/20041114 Firefox/1.0
Mozilla/5.0 (X11; Linux i686; rv:1.7.5) Gecko/20041108 Firefox/1.0
Mozilla/5.0 (Windows; U; WinNT4.0; en-US; rv:1.7.5) Gecko/20041107 Firefox/1.0
Mozilla/5.0 (Windows; U; WinNT4.0; de-DE; rv:1.7.5) Gecko/20041108 Firefox/1.0
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW; rv:1.7.5) Gecko/20041119 Firefox/1.0
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7) Gecko/20040917 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Win98; de-DE; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (Windows; U; Win 9x 4.90; rv:1.7) Gecko/20040803 Firefox/0.9.3
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7) Gecko/20040802 Firefox/0.9.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.7) Gecko/20040707 Firefox/0.9.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7) Gecko/20040707 Firefox/0.9.2
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.7) Gecko/20040707 Firefox/0.9.2
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.7) Gecko/20040630 Firefox/0.9.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.7) Gecko/20040626 Firefox/0.9.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.7) Gecko/20040626 Firefox/0.9.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7) Gecko/20040614 Firefox/0.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.7) Gecko/20040614 Firefox/0.9
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.6) Gecko/20040614 Firefox/0.8
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.6) Gecko/20040225 Firefox/0.8
Mozilla/5.0 (X11; U; Linux i686; de-DE; rv:1.6) Gecko/20040207 Firefox/0.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Windows NT 5.0; de-DE; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Win98; en-US; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (Windows; U; Win 9x 4.90; en-US; rv:1.6) Gecko/20040206 Firefox/0.8
Mozilla/5.0 (X11; U; Linux i686; rv:1.7.3) Gecko/20041020 Firefox/0.10.1
Mozilla/5.0 (X11; U; Linux i686; rv:1.7.3) Gecko/20041001 Firefox/0.10.1
Mozilla/5.0 (X11; U; Linux i686; rv:1.7.3) Gecko/20040914 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; rv:1.7.3) Gecko/20041001 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20041001 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20040913 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20040911 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; rv:1.7.3) Gecko/20041001 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Windows NT 5.0; rv:1.7.3) Gecko/20040913 Firefox/0.10.1
Mozilla/5.0 (Windows; U; Win98; rv:1.7.3) Gecko/20041001 Firefox/0.10.1
Mozilla/5.0 (X11; U; Linux i686; rv:1.7.3) Gecko/20040914 Firefox/0.10
Mozilla/5.0 (X11; U; Linux i686; rv:1.7.3) Gecko/20040913 Firefox/0.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; rv:1.7.3) Gecko/20040913 Firefox/0.10
Mozilla/5.0 (Windows; U; Windows NT 5.0; zh-TW; rv:1.8.0.1) Gecko/20060111 Firefox/0.10
Mozilla/5.0 (Windows; U; Windows NT 5.0; rv:1.7.3) Gecko/20040913 Firefox/0.10
Mozilla/5.0 (Windows; U; Win98; rv:1.7.3) Gecko/20040913 Firefox/0.10
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; rv:1.7.3) Gecko/20040913 Firefox/0.10
Mozilla/5.0 (X11; U; Gentoo Linux x86_64; pl-PL) Gecko Firefox
Mozilla/5.0 (X11; ; Linux x86_64; rv:1.8.1.6) Gecko/20070802 Firefox
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.0.6) Gecko/2009011913 Firefox
Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; rv:1.8.1.16) Gecko/20080702 Firefox
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.13) Gecko/20080313 Firefox

@@ opera_user_agent_data
Opera/9.99 (Windows NT 5.1; U; pl) Presto/9.9.9
Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15
Opera/9.70 (Linux ppc64 ; U; en) Presto/2.2.1
Opera/9.70 (Linux i686 ; U; zh-cn) Presto/2.2.0
Opera/9.70 (Linux i686 ; U; en-us) Presto/2.2.0
Opera/9.70 (Linux i686 ; U; en) Presto/2.2.1
Opera/9.70 (Linux i686 ; U; en) Presto/2.2.0
Opera/9.70 (Linux i686 ; U; ; en) Presto/2.2.1
Opera/9.70 (Linux i686 ; U; ; en) Presto/2.2.1
Mozilla/5.0 (Linux i686 ; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.70
Mozilla/4.0 (compatible; MSIE 6.0; Linux i686 ; en) Opera 9.70
Opera 9.7 (Windows NT 5.2; U; en)
Opera/9.64(Windows NT 5.1; U; en) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; pl) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; hr) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; en-GB) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; en) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; de) Presto/2.1.1
Opera/9.64 (X11; Linux x86_64; U; cs) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; tr) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; sv) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; pl) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; nb) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; Linux Mint; nb) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; Linux Mint; it) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; en) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; de) Presto/2.1.1
Opera/9.64 (X11; Linux i686; U; da) Presto/2.1.1
Opera/9.64 (Windows NT 6.1; U; MRA 5.5 (build 02842); ru) Presto/2.1.1
Opera/9.64 (Windows NT 6.1; U; de) Presto/2.1.1
Opera/9.64 (Windows NT 6.0; U; zh-cn) Presto/2.1.1
Opera/9.64 (Windows NT 6.0; U; pl) Presto/2.1.1
Opera/9.63 (X11; Linux x86_64; U; ru) Presto/2.1.1
Opera/9.63 (X11; Linux x86_64; U; cs) Presto/2.1.1
Opera/9.63 (X11; Linux i686; U; ru) Presto/2.1.1
Opera/9.63 (X11; Linux i686; U; ru)
Opera/9.63 (X11; Linux i686; U; nb) Presto/2.1.1
Opera/9.63 (X11; Linux i686; U; en)
Opera/9.63 (X11; Linux i686; U; de) Presto/2.1.1
Opera/9.63 (X11; Linux i686)
Opera/9.63 (X11; FreeBSD 7.1-RELEASE i386; U; en) Presto/2.1.1
Opera/9.63 (Windows NT 6.1; U; hu) Presto/2.1.1
Opera/9.63 (Windows NT 6.1; U; en) Presto/2.1.1
Opera/9.63 (Windows NT 6.1; U; de) Presto/2.1.1
Opera/9.63 (Windows NT 6.0; U; pl) Presto/2.1.1
Opera/9.63 (Windows NT 6.0; U; nb) Presto/2.1.1
Opera/9.63 (Windows NT 6.0; U; fr) Presto/2.1.1
Opera/9.63 (Windows NT 6.0; U; en) Presto/2.1.1
Opera/9.63 (Windows NT 6.0; U; cs) Presto/2.1.1
Opera/9.63 (Windows NT 5.2; U; en) Presto/2.1.1
Opera/9.63 (Windows NT 5.2; U; de) Presto/2.1.1
Opera/9.63 (Windows NT 5.1; U; pt-BR) Presto/2.1.1
Opera/9.62 (X11; Linux x86_64; U; ru) Presto/2.1.1
Opera/9.62 (X11; Linux i686; U; pt-BR) Presto/2.1.1
Opera/9.62 (X11; Linux i686; U; Linux Mint; en) Presto/2.1.1
Opera/9.62 (X11; Linux i686; U; it) Presto/2.1.1
Opera/9.62 (X11; Linux i686; U; fi) Presto/2.1.1
Opera/9.62 (X11; Linux i686; U; en) Presto/2.1.1
Opera/9.62 (Windows NT 6.1; U; en) Presto/2.1.1
Opera/9.62 (Windows NT 6.0; U; pl) Presto/2.1.1
Opera/9.62 (Windows NT 6.0; U; nb) Presto/2.1.1
Opera/9.62 (Windows NT 6.0; U; en-GB) Presto/2.1.1
Opera/9.62 (Windows NT 6.0; U; en) Presto/2.1.1
Opera/9.62 (Windows NT 6.0; U; de) Presto/2.1.1
Opera/9.62 (Windows NT 5.2; U; en) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; zh-tw) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; zh-cn) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; tr) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; ru) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; pt-BR) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; pl) Presto/2.1.1
Opera/9.62 (Windows NT 5.1; U; nn) Presto/2.1.1
Opera/9.61 (X11; Linux x86_64; U; fr) Presto/2.1.1
Opera/9.61 (X11; Linux i686; U; ru) Presto/2.1.1
Opera/9.61 (X11; Linux i686; U; pl) Presto/2.1.1
Opera/9.61 (X11; Linux i686; U; en) Presto/2.1.1
Opera/9.61 (X11; Linux i686; U; de) Presto/2.1.1
Opera/9.61 (Windows NT 6.0; U; ru) Presto/2.1.1
Opera/9.61 (Windows NT 6.0; U; pt-BR) Presto/2.1.1
Opera/9.61 (Windows NT 6.0; U; http://lucideer.com; en-GB) Presto/2.1.1
Opera/9.61 (Windows NT 6.0; U; en) Presto/2.1.1
Opera/9.61 (Windows NT 5.2; U; en) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; zh-tw) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; zh-cn) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; ru) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; fr) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; en-GB) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; en) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; de) Presto/2.1.1
Opera/9.61 (Windows NT 5.1; U; cs) Presto/2.1.1
Opera/9.61 (Macintosh; Intel Mac OS X; U; de) Presto/2.1.1
Mozilla/5.0 (Windows NT 5.1; U; en-GB; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.61
Opera/9.60 (X11; Linux x86_64; U)
Opera/9.60 (X11; Linux i686; U; ru) Presto/2.1.1
Opera/9.60 (X11; Linux i686; U; en-GB) Presto/2.1.1
Opera/9.60 (Windows NT 6.0; U; uk) Presto/2.1.1
Opera/9.60 (Windows NT 6.0; U; ru) Presto/2.1.1
Opera/9.60 (Windows NT 6.0; U; pl) Presto/2.1.1
Opera/9.60 (Windows NT 6.0; U; de) Presto/2.1.1
Opera/9.60 (Windows NT 6.0; U; bg) Presto/2.1.1
Opera/9.60 (Windows NT 5.1; U; tr) Presto/2.1.1
Opera/9.60 (Windows NT 5.1; U; sv) Presto/2.1.1
Opera/9.60 (Windows NT 5.1; U; es-ES) Presto/2.1.1
Opera/9.60 (Windows NT 5.1; U; en-GB) Presto/2.1.1
Opera/9.60 (Windows NT 5.0; U; en) Presto/2.1.1
Mozilla/5.0 (X11; Linux x86_64; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.60
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux x86_64; en) Opera 9.60
Opera/9.52 (X11; Linux x86_64; U; ru)
Opera/9.52 (X11; Linux x86_64; U; en)
Opera/9.52 (X11; Linux x86_64; U)
Opera/9.52 (X11; Linux ppc; U; de)
Opera/9.52 (X11; Linux i686; U; fr)
Opera/9.52 (X11; Linux i686; U; en)
Opera/9.52 (X11; Linux i686; U; cs)
Opera/9.52 (Windows NT 6.0; U; Opera/9.52 (X11; Linux x86_64; U); en)
Opera/9.52 (Windows NT 6.0; U; fr)
Opera/9.52 (Windows NT 6.0; U; en)
Opera/9.52 (Windows NT 6.0; U; de)
Opera/9.52 (Windows NT 5.2; U; ru)
Opera/9.52 (Windows NT 5.0; U; en)
Opera/9.52 (Macintosh; PPC Mac OS X; U; ja)
Opera/9.52 (Macintosh; PPC Mac OS X; U; fr)
Opera/9.52 (Macintosh; Intel Mac OS X; U; pt-BR)
Opera/9.52 (Macintosh; Intel Mac OS X; U; pt)
Mozilla/5.0 (Windows NT 5.1; U; de; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.52
Mozilla/5.0 (Windows NT 5.1; U; ; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 9.52
Opera/9.51 (X11; Linux i686; U; Linux Mint; en)
Opera/9.51 (X11; Linux i686; U; fr)
Opera/9.51 (X11; Linux i686; U; de)
Opera/9.51 (Windows NT 6.0; U; sv)
Opera/9.51 (Windows NT 6.0; U; es)
Opera/9.51 (Windows NT 6.0; U; en)
Opera/9.51 (Windows NT 5.2; U; en)
Opera/9.51 (Windows NT 5.1; U; nn)
Opera/9.51 (Windows NT 5.1; U; fr)
Opera/9.51 (Windows NT 5.1; U; es-LA)
Opera/9.51 (Windows NT 5.1; U; es-AR)
Opera/9.51 (Windows NT 5.1; U; en-GB)
Opera/9.51 (Windows NT 5.1; U; en)
Opera/9.51 (Windows NT 5.1; U; da)
Opera/9.51 (Macintosh; Intel Mac OS X; U; en)
Mozilla/5.0 (X11; Linux i686; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51
Mozilla/5.0 (Windows NT 6.0; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51
Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51
Mozilla/5.0 (Windows NT 5.1; U; en-GB; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51
Mozilla/5.0 (Windows NT 5.1; U; de; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.51
Opera/9.50 (X11; Linux x86_64; U; pl)
Opera/9.50 (X11; Linux x86_64; U; nb)
Opera/9.50 (X11; Linux ppc; U; en)
Opera/9.50 (X11; Linux i686; U; es-ES)
Opera/9.50 (Windows NT 5.2; U; it)
Opera/9.50 (Windows NT 5.1; U; ru)
Opera/9.50 (Windows NT 5.1; U; nn)
Opera/9.50 (Windows NT 5.1; U; nl)
Opera/9.50 (Windows NT 5.1; U; it)
Opera/9.50 (Windows NT 5.1; U; es-ES)
Opera/9.50 (Macintosh; Intel Mac OS X; U; en)
Opera/9.50 (Macintosh; Intel Mac OS X; U; de)
Mozilla/5.0 (Windows NT 5.1; U; zh-cn; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.50
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux x86_64; en) Opera 9.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 6.0; en) Opera 9.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; en) Opera 9.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 9.50
Opera/9.5 (Windows NT 6.0; U; en)
Opera/9.5 (Windows NT 5.1; U; fr)
Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9b3) Gecko/2008020514 Opera 9.5
Opera 9.4 (Windows NT 6.1; U; en)
Opera 9.4 (Windows NT 5.3; U; en)
Opera/9.30 (Nintendo Wii; U; ; 2071; Wii Shop Channel/1.0; en)
Opera/9.30 (Nintendo Wii; U; ; 2047-7;en)
Opera/9.30 (Nintendo Wii; U; ; 2047-7; fr)
Opera/9.30 (Nintendo Wii; U; ; 2047-7; de)
Opera/9.27 (X11; Linux i686; U; fr)
Opera/9.27 (X11; Linux i686; U; en)
Opera/9.27 (Windows NT 5.2; U; en)
Opera/9.27 (Windows NT 5.1; U; ja)
Opera/9.27 (Macintosh; Intel Mac OS X; U; sv)
Mozilla/5.0 (Windows NT 5.2; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.27
Mozilla/5.0 (Windows NT 5.1; U; es-la; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.27
Mozilla/5.0 (Macintosh; Intel Mac OS X; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.27
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 9.27
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; en) Opera 9.27
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; es-la) Opera 9.27
Opera/9.26 (Windows NT 5.1; U; zh-cn)
Opera/9.26 (Windows NT 5.1; U; pl)
Opera/9.26 (Windows NT 5.1; U; nl)
Opera/9.26 (Windows NT 5.1; U; MEGAUPLOAD 2.0; en)
Opera/9.26 (Windows NT 5.1; U; de)
Opera/9.26 (Macintosh; PPC Mac OS X; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.26
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 6.0; en) Opera 9.26
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 9.26
Opera/9.25 (X11; Linux i686; U; fr-ca)
Opera/9.25 (X11; Linux i686; U; fr)
Opera/9.25 (X11; Linux i686; U; en)
Opera/9.25 (Windows NT 6.0; U; SV1; MEGAUPLOAD 2.0; ru)
Opera/9.25 (Windows NT 6.0; U; sv)
Opera/9.25 (Windows NT 6.0; U; ru)
Opera/9.25 (Windows NT 6.0; U; MEGAUPLOAD 1.0; ru)
Opera/9.25 (Windows NT 6.0; U; en-US)
Opera/9.25 (Windows NT 5.2; U; en)
Opera/9.25 (Windows NT 5.1; U; zh-cn)
Opera/9.25 (Windows NT 5.1; U; ru)
Opera/9.25 (Windows NT 5.1; U; MEGAUPLOAD 1.0; pt-br)
Opera/9.25 (Windows NT 5.1; U; lt)
Opera/9.25 (Windows NT 5.1; U; de)
Opera/9.25 (Windows NT 5.0; U; en)
Opera/9.25 (Windows NT 5.0; U; cs)
Opera/9.25 (Windows NT 4.0; U; en)
Opera/9.25 (OpenSolaris; U; en)
Opera/9.25 (Macintosh; PPC Mac OS X; U; en)
Opera/9.25 (Macintosh; Intel Mac OS X; U; en)
Opera/9.24 (X11; SunOS i86pc; U; en)
Opera/9.24 (X11; Linux i686; U; de)
Opera/9.24 (Windows NT 5.1; U; tr)
Opera/9.24 (Windows NT 5.1; U; ru)
Opera/9.24 (Windows NT 5.0; U; ru)
Opera/9.24 (Macintosh; PPC Mac OS X; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.24
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 9.24
Mozilla/4.0 (compatible; MSIE 6.0; Mac_PowerPC; en) Opera 9.24
Opera/9.23 (X11; Linux x86_64; U; en)
Opera/9.23 (X11; Linux i686; U; es-es)
Opera/9.23 (X11; Linux i686; U; en)
Opera/9.23 (Windows NT 6.0; U; de)
Opera/9.23 (Windows NT 5.1; U; zh-cn)
Opera/9.23 (Windows NT 5.1; U; SV1; MEGAUPLOAD 1.0; ru)
Opera/9.23 (Windows NT 5.1; U; pt)
Opera/9.23 (Windows NT 5.1; U; ja)
Opera/9.23 (Windows NT 5.1; U; it)
Opera/9.23 (Windows NT 5.1; U; fi)
Opera/9.23 (Windows NT 5.1; U; en)
Opera/9.23 (Windows NT 5.1; U; de)
Opera/9.23 (Windows NT 5.1; U; da)
Opera/9.23 (Windows NT 5.0; U; en)
Opera/9.23 (Windows NT 5.0; U; de)
Opera/9.23 (Nintendo Wii; U; ; 1038-58; Wii Internet Channel/1.0; en)
Opera/9.23 (Macintosh; Intel Mac OS X; U; ja)
Opera/9.23 (Mac OS X; ru)
Opera/9.23 (Mac OS X; fr)
Mozilla/5.0 (X11; Linux i686; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.23
Opera/9.22 (X11; OpenBSD i386; U; en)
Opera/9.22 (X11; Linux i686; U; en)
Opera/9.22 (X11; Linux i686; U; de)
Opera/9.22 (Windows NT 6.0; U; ru)
Opera/9.22 (Windows NT 6.0; U; en)
Opera/9.22 (Windows NT 5.1; U; SV1; MEGAUPLOAD 2.0; ru)
Opera/9.22 (Windows NT 5.1; U; SV1; MEGAUPLOAD 1.0; ru)
Opera/9.22 (Windows NT 5.1; U; pl)
Opera/9.22 (Windows NT 5.1; U; fr)
Opera/9.22 (Windows NT 5.1; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.0) Gecko/20060728 Firefox/1.5.0 Opera 9.22
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 9.22
Opera/9.21 (X11; Linux x86_64; U; en)
Opera/9.21 (X11; Linux i686; U; es-es)
Opera/9.21 (X11; Linux i686; U; en)
Opera/9.21 (X11; Linux i686; U; de)
Opera/9.21 (Windows NT 6.0; U; nb)
Opera/9.21 (Windows NT 6.0; U; en)
Opera/9.21 (Windows NT 5.2; U; en)
Opera/9.21 (Windows NT 5.1; U; SV1; MEGAUPLOAD 1.0; ru)
Opera/9.21 (Windows NT 5.1; U; ru)
Opera/9.21 (Windows NT 5.1; U; pt-br)
Opera/9.21 (Windows NT 5.1; U; pl)
Opera/9.21 (Windows NT 5.1; U; nl)
Opera/9.21 (Windows NT 5.1; U; MEGAUPLOAD 1.0; en)
Opera/9.21 (Windows NT 5.1; U; fr)
Opera/9.21 (Windows NT 5.1; U; en)
Opera/9.21 (Windows NT 5.1; U; de)
Opera/9.21 (Windows NT 5.0; U; de)
Opera/9.21 (Windows 98; U; en)
Opera/9.21 (Macintosh; PPC Mac OS X; U; en)
Opera/9.21 (Macintosh; Intel Mac OS X; U; en)
Opera/9.20(Windows NT 5.1; U; en)
Opera/9.20 (X11; Linux x86_64; U; en)
Opera/9.20 (X11; Linux ppc; U; en)
Opera/9.20 (X11; Linux i686; U; tr)
Opera/9.20 (X11; Linux i686; U; ru)
Opera/9.20 (X11; Linux i686; U; pl)
Opera/9.20 (X11; Linux i686; U; es-es)
Opera/9.20 (X11; Linux i686; U; en)
Opera/9.20 (X11; Linux i586; U; en)
Opera/9.20 (Windows NT 6.0; U; es-es)
Opera/9.20 (Windows NT 6.0; U; en)
Opera/9.20 (Windows NT 6.0; U; de)
Opera/9.20 (Windows NT 5.2; U; en)
Opera/9.20 (Windows NT 5.1; U; zh-tw)
Opera/9.20 (Windows NT 5.1; U; nb)
Opera/9.20 (Windows NT 5.1; U; MEGAUPLOAD=1.0; es-es)
Opera/9.20 (Windows NT 5.1; U; it)
Opera/9.20 (Windows NT 5.1; U; es-es)
Opera/9.20 (Windows NT 5.1; U; es-AR)
Opera/9.20 (Windows NT 5.1; U; en)
Opera/9.12 (X11; Linux i686; U; en) (Ubuntu)
Opera/9.12 (Windows NT 5.0; U; ru)
Opera/9.12 (Windows NT 5.0; U)
Opera/9.10 (X11; Linux; U; en)
Opera/9.10 (X11; Linux x86_64; U; en)
Opera/9.10 (X11; Linux i686; U; pl)
Opera/9.10 (X11; Linux i686; U; kubuntu;pl)
Opera/9.10 (X11; Linux i686; U; en)
Opera/9.10 (X11; Linux i386; U; en)
Opera/9.10 (Windows NT 6.0; U; it-IT)
Opera/9.10 (Windows NT 6.0; U; en)
Opera/9.10 (Windows NT 5.2; U; en)
Opera/9.10 (Windows NT 5.2; U; de)
Opera/9.10 (Windows NT 5.1; U; zh-tw)
Opera/9.10 (Windows NT 5.1; U; sv)
Opera/9.10 (Windows NT 5.1; U; pt)
Opera/9.10 (Windows NT 5.1; U; pl)
Opera/9.10 (Windows NT 5.1; U; nl)
Opera/9.10 (Windows NT 5.1; U; MEGAUPLOAD 1.0; pl)
Opera/9.10 (Windows NT 5.1; U; it)
Opera/9.10 (Windows NT 5.1; U; fi)
Opera/9.10 (Windows NT 5.1; U; es-es)
Opera/9.10 (Windows NT 5.1; U; en)
Opera/9.02 (X11; Linux i686; U; pl)
Opera/9.02 (X11; Linux i686; U; hu)
Opera/9.02 (X11; Linux i686; U; en)
Opera/9.02 (X11; Linux i686; U; de)
Opera/9.02 (Windows XP; U; ru)
Opera/9.02 (Windows NT 5.2; U; en)
Opera/9.02 (Windows NT 5.2; U; de)
Opera/9.02 (Windows NT 5.1; U; zh-cn)
Opera/9.02 (Windows NT 5.1; U; ru)
Opera/9.02 (Windows NT 5.1; U; pt-br)
Opera/9.02 (Windows NT 5.1; U; pl)
Opera/9.02 (Windows NT 5.1; U; nb)
Opera/9.02 (Windows NT 5.1; U; ja)
Opera/9.02 (Windows NT 5.1; U; fi)
Opera/9.02 (Windows NT 5.1; U; en)
Opera/9.02 (Windows NT 5.1; U; de)
Opera/9.02 (Windows NT 5.0; U; sv)
Opera/9.02 (Windows NT 5.0; U; pl)
Opera/9.02 (Windows NT 5.0; U; en)
Opera/9.02 (Windows NT 5.0; U; de)
Opera/9.01 (X11; OpenBSD i386; U; en)
Opera/9.01 (X11; Linux i686; U; en)
Opera/9.01 (X11; FreeBSD 6 i386; U;pl)
Opera/9.01 (X11; FreeBSD 6 i386; U; en)
Opera/9.01 (Windows NT 5.2; U; ru)
Opera/9.01 (Windows NT 5.2; U; en)
Opera/9.01 (Windows NT 5.1; U; ru)
Opera/9.01 (Windows NT 5.1; U; pl)
Opera/9.01 (Windows NT 5.1; U; ja)
Opera/9.01 (Windows NT 5.1; U; es-es)
Opera/9.01 (Windows NT 5.1; U; en)
Opera/9.01 (Windows NT 5.1; U; de)
Opera/9.01 (Windows NT 5.1; U; da)
Opera/9.01 (Windows NT 5.1; U; cs)
Opera/9.01 (Windows NT 5.1; U; bg)
Opera/9.01 (Windows NT 5.1)
Opera/9.01 (Windows NT 5.0; U; en)
Opera/9.01 (Windows NT 5.0; U; de)
Opera/9.01 (Macintosh; PPC Mac OS X; U; it)
Opera/9.01 (Macintosh; PPC Mac OS X; U; en)
Opera/9.00 (X11; Linux i686; U; pl)
Opera/9.00 (X11; Linux i686; U; en)
Opera/9.00 (X11; Linux i686; U; de)
Opera/9.00 (Windows; U)
Opera/9.00 (Windows NT 5.2; U; ru)
Opera/9.00 (Windows NT 5.2; U; pl)
Opera/9.00 (Windows NT 5.2; U; en)
Opera/9.00 (Windows NT 5.1; U; ru)
Opera/9.00 (Windows NT 5.1; U; pl)
Opera/9.00 (Windows NT 5.1; U; nl)
Opera/9.00 (Windows NT 5.1; U; ja)
Opera/9.00 (Windows NT 5.1; U; it)
Opera/9.00 (Windows NT 5.1; U; fr)
Opera/9.00 (Windows NT 5.1; U; fi)
Opera/9.00 (Windows NT 5.1; U; es-es)
Opera/9.00 (Windows NT 5.1; U; en)
Opera/9.00 (Windows NT 5.1; U; de)
Opera/9.00 (Windows NT 5.0; U; en)
Opera/9.00 (Nintindo Wii; U; ; 103858; Wii Shop Channel/1.0; en)
Opera/9.00 (Nintendo Wii; U; ; 1038-58; Wii Internet Channel/1.0; en)
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; Sprint:PPC-6700) Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 320x320)Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 320x320) Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x320) Opera 8.65 [zh-cn]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x320) Opera 8.65 [nl]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x320) Opera 8.65 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x240) Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC) Opera 8.65 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) Opera 8.60 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x320) Opera 8.60 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; PPC; 240x240) Opera 8.60 [en]
Opera/8.54 (X11; Linux i686; U; pl)
Opera/8.54 (X11; Linux i686; U; de)
Opera/8.54 (Windows NT 5.1; U; ru)
Opera/8.54 (Windows NT 5.1; U; pl)
Opera/8.54 (Windows NT 5.1; U; en)
Opera/8.54 (Windows NT 5.0; U; en)
Opera/8.54 (Windows NT 5.0; U; de)
Opera/8.54 (Windows 98; U; en)
Mozilla/5.0 (Windows NT 5.1; U; pl) Opera 8.54
Mozilla/5.0 (Windows 98; U; en) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; pl) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; fr) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; da) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; pl) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; en) Opera 8.54
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; en) Opera 8.54
Opera/8.53 (Windows NT 5.2; U; en)
Opera/8.53 (Windows NT 5.1; U; pt)
Opera/8.53 (Windows NT 5.1; U; en)
Opera/8.53 (Windows NT 5.1; U; de)
Opera/8.53 (Windows NT 5.0; U; en)
Opera/8.53 (Windows 98; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.53
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; sv) Opera 8.53
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.53
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.53
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; en) Opera 8.53
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; en) Opera 8.53
Opera/8.52 (X11; Linux x86_64; U; en)
Opera/8.52 (X11; Linux i686; U; en)
Opera/8.52 (Windows NT 5.1; U; ru)
Opera/8.52 (Windows NT 5.1; U; en)
Opera/8.52 (Windows NT 5.0; U; en)
Opera/8.52 (Windows ME; U; en)
Mozilla/5.0 (X11; Linux i686; U; en) Opera 8.52
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.52
Mozilla/5.0 (Windows NT 5.1; U; de) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; pl) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; en) Opera 8.52
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; en) Opera 8.52
Opera/8.51 (X11; U; Linux i686; en-US; rv:1.8)
Opera/8.51 (X11; Linux x86_64; U; en)
Opera/8.51 (X11; Linux i686; U; en)
Opera/8.51 (Windows NT 5.1; U; pl)
Opera/8.51 (Windows NT 5.1; U; nb)
Opera/8.51 (Windows NT 5.1; U; fr)
Opera/8.51 (Windows NT 5.1; U; en)
Opera/8.51 (Windows NT 5.1; U; de)
Opera/8.51 (Windows NT 5.0; U; en)
Opera/8.51 (Windows 98; U; en)
Opera/8.51 (Macintosh; PPC Mac OS X; U; de)
Opera/8.51 (FreeBSD 5.1; U; en)
Mozilla/5.0 (Windows NT 5.1; U; ru) Opera 8.51
Mozilla/5.0 (Windows NT 5.1; U; fr) Opera 8.51
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.51
Mozilla/5.0 (Windows ME; U; en) Opera 8.51
Mozilla/5.0 (Macintosh; PPC Mac OS X; U; en) Opera 8.51
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; ru) Opera 8.51
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 8.51
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; sv) Opera 8.51
Opera/8.50 (Windows NT 5.1; U; ru)
Opera/8.50 (Windows NT 5.1; U; pl)
Opera/8.50 (Windows NT 5.1; U; fr)
Opera/8.50 (Windows NT 5.1; U; es-ES)
Opera/8.50 (Windows NT 5.1; U; en)
Opera/8.50 (Windows NT 5.1; U; de)
Opera/8.50 (Windows NT 5.0; U; fr)
Opera/8.50 (Windows NT 5.0; U; en)
Opera/8.50 (Windows NT 5.0; U; de)
Opera/8.50 (Windows ME; U; en)
Opera/8.50 (Windows 98; U; ru)
Opera/8.50 (Windows 98; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.50
Mozilla/5.0 (Windows NT 5.1; U; de) Opera 8.50
Mozilla/5.0 (Windows NT 5.0; U; de) Opera 8.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; ru) Opera 8.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; en) Opera 8.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; tr) Opera 8.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; sv) Opera 8.50
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.50
Opera/8.10 (Windows NT 5.1; U; en)
Opera/8.02 (Windows NT 5.1; U; ru)
Opera/8.02 (Windows NT 5.1; U; en)
Opera/8.02 (Windows NT 5.1; U; de)
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; en) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; en) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; de) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows ME; pl) Opera 8.02
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; de) Opera 8.02
Opera/8.01 (Windows NT 5.1; U; pl)
Opera/8.01 (Windows NT 5.1; U; fr)
Opera/8.01 (Windows NT 5.1; U; en)
Opera/8.01 (Windows NT 5.1; U; de)
Opera/8.01 (Windows NT 5.0; U; de)
Opera/8.01 (Macintosh; U; PPC Mac OS; en)
Opera/8.01 (Macintosh; PPC Mac OS X; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.01
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.01
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.01
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.01
Opera/8.00 (Windows NT 5.1; U; en)
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.00
Opera/8.0 (X11; Linux i686; U; cs)
Opera/8.0 (Windows NT 5.1; U; en)
Mozilla/5.0 (Windows NT 5.1; U; en) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; IT) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; de) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; en) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; de) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE) Opera 8.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; en) Opera 8.0
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 7.60
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.54u1 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98) Opera 7.54u1 [en]
Opera/7.54 (X11; Linux i686; U) [en]
Opera/7.54 (Windows NT 5.1; U) [en]
Opera/7.54 (Windows NT 5.1; U) [it]
Opera/7.54 (Windows NT 5.1; U) [en]
Opera/7.54 (Windows NT 5.1; U) [de]
Opera/7.54 (Windows NT 5.0; U) [en]
Opera/7.54 (Windows NT 5.0; U) [de]
Opera/7.54 (Windows 98; U) [de]
Mozilla/5.0 (X11; Linux i686; U) Opera 7.54 [en]
Mozilla/5.0 (X11; Linux i686; U) Opera 7.54 [en]
Mozilla/5.0 (Windows NT 5.1; U) Opera 7.54 [de]
Mozilla/5.0 (Windows NT 5.0; U) Opera 7.54 [en]
Mozilla/4.78 (Windows NT 5.1; U) Opera 7.54 [de]
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686) Opera 7.54 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.54 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.54 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.54 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.54 [pl]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.54 [de]
Mozilla/4.0 (compatible; MSIE 5.23; Mac_PowerPC) Opera 7.54 [en]
Opera/7.53 (X11; Linux i686; U) [en_US]
Opera/7.53 (Windows NT 5.1; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.53 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows ME) Opera 7.53 [en]
Opera/7.52 (Windows NT 5.1; U) [en]
Opera/7.52 (Windows NT 5.1; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.52 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.52 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.52 [en]
Opera/7.51 (X11; SunOS sun4u; U) [de]
Opera/7.51 (Windows NT 5.1; U) [en]
Opera/7.51 (Linux) [en]
Mozilla/4.78 (Windows NT 5.1; U) Opera 7.51 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.51 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.51 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.51 [en]
Opera/7.50 (Windows XP; U)
Opera/7.50 (Windows NT 5.1; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.50 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.50 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.50 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.50 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98) Opera 7.50 [en]
Mozilla/4.0 (compatible; MSIE 6.0; ; Linux i686) Opera 7.50 [en]
Opera/7.23 (Windows NT 6.0; U) [zh-cn]
Opera/7.23 (Windows NT 5.1; U; sv)
Opera/7.23 (Windows NT 5.0; U) [en]
Opera/7.23 (Windows NT 5.0; U) [fr]
Opera/7.23 (Windows NT 5.0; U) [en]
Opera/7.23 (Windows 98; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686) Opera 7.23 [fi]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.23 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.23 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.23 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.23 [en-GB]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.23 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.23 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.23 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.23 [ca]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 4.0) Opera 7.23 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98) Opera 7.23 [en]
Opera/7.22 (Windows NT 5.1; U) [de]
Opera/7.21 (Windows NT 5.1; U) [en]
Mozilla/5.0 (Windows NT 5.0; U) Opera 7.21 [en]
Opera/7.20 (Windows NT 5.1; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.20 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.20 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98) Opera 7.20 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows 98) Opera 7.20 [de]
Opera/7.11 (Windows NT 5.1; U) [pl]
Opera/7.11 (Windows NT 5.1; U) [en]
Opera/7.11 (Windows NT 5.1; U) [de]
Opera/7.11 (Windows NT 5.0; U) [en]
Opera/7.11 (Windows NT 5.0; U) [de]
Opera/7.11 (Windows 98; U) [en]
Opera/7.11 (Windows 98; U) [de]
Opera/7.11 (Linux 2.6.0-test4 i686; U) [en]
Mozilla/5.0 (Windows NT 5.1; U) Opera 7.11 [en]
Mozilla/5.0 (Windows NT 5.0; U) Opera 7.11 [en]
Mozilla/5.0 (Linux 2.4.21-0.13mdk i686; U) Opera 7.11 [en]
Mozilla/4.78 (Windows NT 5.0; U) Opera 7.11 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.11 [ru]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.11 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.11 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.11 [fr]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.11 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.11 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 4.0) Opera 7.11 [de]
Mozilla/4.0 (compatible; MSIE 6.0; Windows ME) Opera 7.11 [en]
Opera/7.10 (Windows NT 5.1; U) [en]
Opera/7.10 (Windows NT 5.0; U) [en]
Opera/7.10 (Windows NT 4.0; U) [de]
Opera/7.10 (Linux Debian;en-US)
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.10 [fr]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1) Opera 7.10 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0) Opera 7.10 [en]
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 4.0) Opera 7.10 [de]
Mozilla/3.0 (Windows NT 5.0; U) Opera 7.10 [de]
Opera/7.03 (Windows NT 5.1; U) [en]
Opera/7.03 (Windows NT 5.1; U) [de]
Opera/7.03 (Windows NT 5.0; U) [en]
Opera/7.03 (Windows NT 5.0; U) [de]
Opera/7.03 (Windows NT 4.0; U) [en]
Opera/7.03 (Windows 98; U) [en]
Opera/7.03 (Windows 98; U) [de]
Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.0.6) Gecko/2009020911 Ubuntu/8.10 (intrepid) Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.03 [de]
Mozilla/5.0 (Windows NT 5.1; U) Opera 7.03 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.03 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.03 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.03 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.03 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows ME) Opera 7.03 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 98) Opera 7.03 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 98) Opera 7.03 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 95) Opera 7.03 [de]
Opera/7.02 (Windows NT 5.1; U) [fr]
Opera/7.02 (Windows 98; U) [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.02 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.02 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 4.0) Opera 7.02 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows ME) Opera 7.02 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 98) Opera 7.02 [en]
Opera/7.01 (Windows NT 5.1; U) [en]
Opera/7.01 (Windows NT 5.0; U) [en]
Opera/7.01 (Windows 98; U) [fr]
Opera/7.01 (Windows 98; U) [en]
Mozilla/5.0 (Windows NT 5.0; U) Opera 7.01 [en]
Mozilla/4.78 (Windows NT 5.0; U) Opera 7.01 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.01 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.01 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.01 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 98) Opera 7.01 [en]
Mozilla/3.0 (Windows NT 5.0; U) Opera 7.01 [en]
Opera/7.0 (Windows NT 5.1; U) [en]
Opera/7.0 (Windows NT 4.0; U) [en]
Opera/7.0 (Windows NT 4.0; U) [de]
Opera/7.0 (Windows 98; U) [en]
Opera/7.0 (Windows 2000; U) [en]
Opera/7.0 (Windows 2000; U) [de]
Mozilla/5.0 (Windows 2000; U) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows XP) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.1) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.0 [de]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 4.0) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows ME) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 98) Opera 7.0 [en]
Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows 2000) Opera 7.0 [en]
Opera/6.12 (Linux 2.4.20-4GB i686; U) [en]
Opera/6.12 (Linux 2.4.18-14cpq i686; U) [en]
Mozilla/4.0 (compatible; MSIE 5.0; UNIX) Opera 6.12 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.20-4GB i686) Opera 6.12 [de]
Opera/6.11 (Linux 2.4.18-bf2.4 i686; U) [en]
Opera/6.11 (Linux 2.4.18-4GB i686; U) [en]
Opera/6.11 (Linux 2.4.10-4GB i686; U) [en]
Opera/6.11 (FreeBSD 4.7-RELEASE i386; U) [en]
Mozilla/5.0 (Linux 2.4.19-16mdk i686; U) Opera 6.11 [en]
Mozilla/4.0 (compatible; MSIE 5.0; UNIX) Opera 6.11 [fr]
Mozilla/4.0 (compatible; MSIE 5.0; UNIX) Opera 6.11 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.4 i686) Opera 6.11 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.20-13.7 i686) Opera 6.11 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.19-4GB i686) Opera 6.11 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.19-16mdk i686) Opera 6.11 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.18 i686) Opera 6.11 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.10-4GB i686) Opera 6.11 [en]
Mozilla/5.0 (Linux 2.4.18-ltsp-1 i686; U) Opera 6.1 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.19 i686) Opera 6.1 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.18-4GB i686) Opera 6.1 [de]
Mozilla/5.0 (Windows XP; U) Opera 6.06 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.06 [fr]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.06 [de]
Opera/6.05 (Windows XP; U) [en]
Opera/6.05 (Windows XP; U) [en]
Opera/6.05 (Windows XP; U) [de]
Opera/6.05 (Windows NT 4.0; U) [ro]
Opera/6.05 (Windows NT 4.0; U) [fr]
Opera/6.05 (Windows NT 4.0; U) [de]
Opera/6.05 (Windows ME; U) [fr]
Opera/6.05 (Windows ME; U) [de]
Opera/6.05 (Windows 98; U) [fr]
Opera/6.05 (Windows 98; U) [en]
Opera/6.05 (Windows 98; U) [de]
Opera/6.05 (Windows 2000; U) [oc]
Opera/6.05 (Windows 2000; U) [ja]
Opera/6.05 (Windows 2000; U) [it]
Opera/6.05 (Windows 2000; U) [fr]
Opera/6.05 (Windows 2000; U) [en]
Opera/6.05 (Windows 2000; U) [de]
Mozilla/5.0 (Windows XP; U) Opera 6.05 [de]
Mozilla/5.0 (Windows NT 4.0; U) Opera 6.05 [en]
Mozilla/5.0 (Windows ME; U) Opera 6.05 [de]
Opera/6.04 (Windows XP; U) [en]
Opera/6.04 (Windows XP; U) [de]
Opera/6.04 (Windows NT 4.0; U) [en]
Opera/6.04 (Windows NT 4.0; U) [de]
Opera/6.04 (Windows 98; U) [en-GB]
Opera/6.04 (Windows 2000; U) [en]
Opera/6.04 (Windows 2000; U) [de]
Mozilla/5.0 (Windows 2000; U) Opera 6.04 [en]
Mozilla/4.78 (Windows 2000; U) Opera 6.04 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.04 [fr]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.04 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.04 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.04 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.04 [pl]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.04 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.04 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.04 [de]
Opera/6.04 (Windows XP; U) [de]
Opera/6.04 (Windows 2000; U) [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.04 [en]
Opera/6.03 (Windows NT 4.0; U) [en]
Opera/6.03 (Windows 98; U) [en]
Opera/6.03 (Windows 2000; U) [en]
Opera/6.03 (Linux 2.4.18-18.7.x i686; U) [en]
Mozilla/5.0 (Windows 2000; U) Opera 6.03 [en]
Mozilla/5.0 (Linux 2.4.18-18.7.x i686; U) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.20-4GB i686) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.19-4GB i686) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.18-4GB i686) Opera 6.03 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.0-64GB-SMP i686) Opera 6.03 [en]
Opera/6.02 (Windows NT 4.0; U) [de]
Mozilla/5.0 (Windows 2000; U) Opera 6.02 [en]
Mozilla/5.0 (Linux; U) Opera 6.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Opera 6.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Opera 6.02 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.20-686 i686) Opera 6.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.18-4GB i686) Opera 6.02 [en]
Opera/6.02 (Windows NT 4.0; U) [de]
Opera/6.01 (Windows XP; U) [de]
Opera/6.01 (Windows 98; U) [en]
Opera/6.01 (Windows 98; U) [de]
Opera/6.01 (Windows 2000; U) [en]
Opera/6.01 (Windows 2000; U) [de]
Mozilla/5.0 (Windows 2000; U) Opera 6.01 [en]
Mozilla/5.0 (Windows 2000; U) Opera 6.01 [de]
Mozilla/4.78 (Windows 2000; U) Opera 6.01 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.01 [it]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.01 [et]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.01 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.01 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.01 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 6.01 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 6.01 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.01 [it]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.01 [fr]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.01 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.01 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Opera 6.01 [de]
Opera/6.0 (Windows XP; U) [de]
Opera/6.0 (Windows ME; U) [de]
Opera/6.0 (Windows 2000; U) [fr]
Opera/6.0 (Windows 2000; U) [de]
Opera/6.0 (Macintosh; PPC Mac OS X; U)
Mozilla/4.76 (Windows NT 4.0; U) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows XP) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.0 [fr]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 2000) Opera 6.0 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC) Opera 6.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC) Opera 6.0 [de]
Opera/5.12 (Windows NT 5.1; U) [de]
Opera/5.12 (Windows 98; U) [en]
Mozilla/5.0 (Windows 98; U) Opera 5.12 [de]
Mozilla/4.76 (Windows NT 4.0; U) Opera 5.12 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 5.12 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 5.12 [it]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 5.12 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 5.12 [it]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 5.12 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 5.12 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC) Opera 5.12 [en]
Opera/5.12 (Windows NT 5.1; U) [de]
Opera/5.11 (Windows 98; U) [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 5.11 [de]
Mozilla/4.0 (compatible; MSIE 5.0; Windows ME) Opera 5.11 [en]
Opera/5.02 (Windows 98; U) [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 5.1) Opera 5.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows NT 4.0) Opera 5.02 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Windows 98) Opera 5.02 [en]
Opera/5.02 (Windows NT 5.0; U) [en]
Opera/5.0 (SunOS 5.8 sun4u; U) [en]
Mozilla/5.0 (SunOS 5.8 sun4u; U) Opera 5.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; SunOS 5.8 sun4u) Opera 5.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC) Opera 5.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux) Opera 5.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.4-4GB i686) Opera 5.0 [en]
Mozilla/4.0 (compatible; MSIE 5.0; Linux 2.4.0-4GB i686) Opera 5.0 [en]
Opera/4.02 (Windows 98; U) [en]
Opera/9.80 (Windows NT 6.1; U; pl) Presto/2.6.31 Version/10.70
Opera/9.80 (X11; Linux i686; U; pl) Presto/2.6.30 Version/10.61
Opera/9.80 (Windows NT 6.1; U; en) Presto/2.6.30 Version/10.61
Opera/9.80 (Macintosh; Intel Mac OS X; U; nl) Presto/2.6.30 Version/10.61
Opera/9.80 (X11; Linux i686; U; en) Presto/2.5.27 Version/10.60
Opera/9.80 (Windows NT 6.0; U; nl) Presto/2.6.30 Version/10.60
Opera/10.60 (Windows NT 5.1; U; zh-cn) Presto/2.6.30 Version/10.60
Opera/10.60 (Windows NT 5.1; U; en-US) Presto/2.6.30 Version/10.60
Opera/9.80 (X11; Linux i686; U; it) Presto/2.5.24 Version/10.54
Opera/9.80 (X11; Linux i686; U; en-GB) Presto/2.5.24 Version/10.53
Mozilla/5.0 (Windows NT 5.1; U; zh-cn; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.53
Mozilla/5.0 (Windows NT 5.1; U; Firefox/5.0; en; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.53
Mozilla/5.0 (Windows NT 5.1; U; Firefox/4.5; en; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.53
Mozilla/5.0 (Windows NT 5.1; U; Firefox/3.5; en; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.53
Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; ko) Opera 10.53
Opera/9.80 (Windows NT 6.1; U; fr) Presto/2.5.24 Version/10.52
Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.22 Version/10.51
Opera/9.80 (Windows NT 6.0; U; cs) Presto/2.5.22 Version/10.51
Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.5.22 Version/10.51
Opera/9.80 (Linux i686; U; en) Presto/2.5.22 Version/10.51
Mozilla/5.0 (Windows NT 6.1; U; en-GB; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.51
Mozilla/5.0 (Linux i686; U; en; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.51
Mozilla/4.0 (compatible; MSIE 8.0; Linux i686; en) Opera 10.51
Opera/9.80 (Windows NT 6.1; U; zh-tw) Presto/2.5.22 Version/10.50
Opera/9.80 (Windows NT 6.1; U; zh-cn) Presto/2.5.22 Version/10.50
Opera/9.80 (Windows NT 6.1; U; sk) Presto/2.6.22 Version/10.50
Opera/9.80 (Windows NT 6.1; U; ja) Presto/2.5.22 Version/10.50
Opera/9.80 (Windows NT 6.0; U; zh-cn) Presto/2.5.22 Version/10.50
Opera/9.80 (Windows NT 5.1; U; ru) Presto/2.5.22 Version/10.50
Opera/10.50 (Windows NT 6.1; U; en-GB) Presto/2.2.2
Opera/9.80 (X11; Linux x86_64; U; it) Presto/2.2.15 Version/10.10
Opera/9.80 (Windows NT 6.1; U; de) Presto/2.2.15 Version/10.10
Opera/9.80 (Windows NT 6.0; U; Gecko/20100115; pl) Presto/2.2.15 Version/10.10
Opera/9.80 (Windows NT 6.0; U; en) Presto/2.2.15 Version/10.10
Opera/9.80 (Windows NT 5.1; U; de) Presto/2.2.15 Version/10.10
Opera/9.80 (Windows NT 5.1; U; cs) Presto/2.2.15 Version/10.10
Mozilla/5.0 (Windows NT 6.0; U; tr; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 10.10
Mozilla/4.0 (compatible; MSIE 6.0; X11; Linux i686; de) Opera 10.10
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 6.0; tr) Opera 10.10
Opera/9.80 (X11; Linux x86_64; U; en-GB) Presto/2.2.15 Version/10.01
Opera/9.80 (X11; Linux x86_64; U; en) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux x86_64; U; de) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; ru) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; pt-BR) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; pl) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; nb) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; en-GB) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; en) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; Debian; pl) Presto/2.2.15 Version/10.00
Opera/9.80 (X11; Linux i686; U; de) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.1; U; zh-cn) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.1; U; fi) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.1; U; en) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.1; U; de) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.1; U; cs) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.0; U; en) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 6.0; U; de) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 5.2; U; en) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 5.1; U; zh-cn) Presto/2.2.15 Version/10.00
Opera/9.80 (Windows NT 5.1; U; ru) Presto/2.2.15 Version/10.00
Mozilla/5.0 (Macintosh; ; Intel Mac OS X; fr; rv:1.8.1.1) Gecko/20061204 Opera
Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera
Mozilla/4.0 (compatible; MSIE 6.0; Windows CE) Opera

@@ safari_user_agent_data
Mozilla/5.0 (Windows; U; Windows NT 6.1; ja-JP) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja-JP) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8; ja-jp) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; fr) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; zh-cn) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ru-ru) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ko-kr) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; it-it) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/534.1+ (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-au) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; el-gr) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ca-es) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; zh-tw) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; ja-jp) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; it-it) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; fr-fr) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; es-es) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; nl-nl) AppleWebKit/533.16 (KHTML, like Gecko) Version/4.1 Safari/533.16
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; ja-jp) AppleWebKit/533.16 (KHTML, like Gecko) Version/4.1 Safari/533.16
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; de-de) AppleWebKit/533.16 (KHTML, like Gecko) Version/4.1 Safari/533.16
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7; en-us) AppleWebKit/533.4 (KHTML, like Gecko) Version/4.1 Safari/533.4
Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/526.9 (KHTML, like Gecko) Version/4.0dp1 Safari/526.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; tr) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; en) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; de) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.5; en-US; rv:1.9.1b3pre) Gecko/20081212 Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/526.9 (KHTML, like Gecko) Version/4.0dp1 Safari/526.8
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-gb) AppleWebKit/528.10+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-gb) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2
Mozilla/5.0 (Windows; U; Windows NT 6.1; es-ES) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs-CZ) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8; en-us) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; da-dk) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ja-jp) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/533.4+ (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; de-de) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; ja-jp) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; nl-nl) AppleWebKit/531.22.7 (KHTML, like Gecko) Version/4.0.5 Safari/531.22.7
Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc
Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10
Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-TW) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Windows; U; Windows NT 6.1; ko-KR) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE) AppleWebKit/532+ (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; hu-hu) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/531.21.11 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; ru-ru) AppleWebKit/533.2+ (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; de-at) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10
Mozilla/5.0 (iPhone; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10
Mozilla/5.0 (iPhone Simulator; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7D11 Safari/531.21.10
Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; es-es) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10
Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; es-es) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B360 Safari/531.21.10
Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.1021.10gin_lib.cc
Mozilla/5.0 (iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-us) AppleWebKit/531.9 (KHTML, like Gecko) Version/4.0.3 Safari/531.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8; en-us) AppleWebKit/532.0+ (KHTML, like Gecko) Version/4.0.3 Safari/531.9.2009
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8; en-us) AppleWebKit/532.0+ (KHTML, like Gecko) Version/4.0.3 Safari/531.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; nl-nl) AppleWebKit/532.3+ (KHTML, like Gecko) Version/4.0.3 Safari/531.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; fi-fi) AppleWebKit/531.9 (KHTML, like Gecko) Version/4.0.3 Safari/531.9
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532+ (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-TW) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl-PL) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja-JP) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr-FR) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; de-DE) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7; en-us) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.2 Safari/530.19
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/4.0.1 Safari/530.18
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/4.0.1 Safari/530.18
Mozilla/5.0 (Windows; U; Windows NT 6.0; ru-RU) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; ja-JP) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; hu-HU) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; he-IL) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; he-IL) AppleWebKit/528+ (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr-FR) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; es-es) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; en) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 6.0; de-DE) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv-SE) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-PT) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; nb-NO) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; hu-HU) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; fi-FI) AppleWebKit/528.16 (KHTML, like Gecko) Version/4.0 Safari/528.16
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs-CZ) AppleWebKit/525.28.3 (KHTML, like Gecko) Version/3.2.3 Safari/525.29
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8; ja-jp) AppleWebKit/530.19.2 (KHTML, like Gecko) Version/3.2.3 Safari/525.28.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; de-de) AppleWebKit/525.28.3 (KHTML, like Gecko) Version/3.2.3 Safari/525.28.3
Mozilla/5.0 (Windows; U; Windows NT 6.1; de-DE) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; de-DE) AppleWebKit/528+ (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; nb-NO) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; ko-KR) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.28 (KHTML, like Gecko) Version/3.2.2 Safari/525.28.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; de-DE) AppleWebKit/528+ (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; ja-JP) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6; nl-nl) AppleWebKit/530.0+ (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6; fr-fr) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6; en-us) AppleWebKit/530.1+ (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; sv-se) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; pl-pl) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; it-it) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; fr-fr) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; es-es) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; zh-tw) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; ru-ru) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; nb-no) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; ko-kr) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; it-it) AppleWebKit/528.8+ (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; it-it) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; hr-hr) AppleWebKit/530.1+ (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; fr-fr) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; es-es) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.2.1 Safari/525.27.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; hu-HU) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru-RU) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5; fi-fi) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5; en-us) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.12
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; sv-se) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.12
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; ja-jp) AppleWebKit/525.26.2 (KHTML, like Gecko) Version/3.2 Safari/525.26.12
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; en-us) AppleWebKit/525.25 (KHTML, like Gecko) Version/3.2 Safari/525.25
Mozilla/5.0 (Windows; U; Windows NT 6.0; pl-PL) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 6.0; fr-FR) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.2; pt-BR) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl-PL) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.1; it-IT) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.1; it-IT) AppleWebKit/525+ (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB) AppleWebKit/525.19 (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Windows; U; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.1.2 Safari/525.21
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_5; fr-fr) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_4; fr-fr) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; sv-se) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.22
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; fr) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.22
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/530.6+ (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/528.7+ (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/528.4+ (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-gb) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl-PL) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.17
Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525+ (KHTML, like Gecko) Version/3.1.1 Safari/525.17
Mozilla/5.0 (Mozilla/5.0 (iPhone; U; CPU iPhone OS 2_0_1 like Mac OS X; fr-fr) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/5G77 Safari/525.20
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3; sv-se) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3; en) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_2; en) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.18
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; ja-jp) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.18
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; en) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.18
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; de-de) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3; nl-nl) AppleWebKit/527+ (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3; nb-no) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3; hu-hu) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3; es-es) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_3; en-ca) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.20
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; ja-jp) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.18
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; fr-fr) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.1 Safari/525.18
Mozilla/5.0 (Windows; U; Windows NT 5.2; ru-RU) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Windows; U; Windows NT 5.1; da-DK) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_2; en-gb) AppleWebKit/526+ (KHTML, like Gecko) Version/3.1 Safari/525.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_2; en-gb) AppleWebKit/526+ (KHTML, like Gecko) Version/3.1 iPhone
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; nl-nl) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/525.27.1 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; pt-br) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; it-it) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; fr-fr) AppleWebKit/525.9 (KHTML, like Gecko) Version/3.1 Safari/525.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; es-es) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; en-us) AppleWebKit/526.1+ (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; en-us) AppleWebKit/525.9 (KHTML, like Gecko) Version/3.1 Safari/525.9
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; en-us) AppleWebKit/525.7 (KHTML, like Gecko) Version/3.1 Safari/525.7
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; en-gb) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_2; en-au) AppleWebKit/525.8+ (KHTML, like Gecko) Version/3.1 Safari/525.6
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_4_11; en-us) AppleWebKit/525.13 (KHTML, like Gecko) Version/3.1 Safari/525.13
Mozilla/5.0 (X11; U; Linux i386; en-GB; rv:1.8.1.7) AppleWebKit (KHTML, like Gecko) (KHTML, like Gecko) Gecko/20070914 Firefox/2.0.0.11 Version/3.0.4 Safari/523.11
Mozilla/5.0 (Windows; U; Windows NT 6.0; en) AppleWebKit/525+ (KHTML, like Gecko) Version/3.0.4 Safari/523.11
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/523.12.2 (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/523.10.3 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/523.10.3 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; en) AppleWebKit/525.3+ (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; sv-se) AppleWebKit/523.12.2 (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; sv-se) AppleWebKit/523.10.6 (KHTML, like Gecko) Version/3.0.4 Safari/523.10.6
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; sv-se) AppleWebKit/523.10.3 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; ko-kr) AppleWebKit/523.15.1 (KHTML, like Gecko) Version/3.0.4 Safari/523.15
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; ja-jp) AppleWebKit/523.12.2 (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; ja-jp) AppleWebKit/523.10.3 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; it-it) AppleWebKit/523.12.2 (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; it-it) AppleWebKit/523.10.6 (KHTML, like Gecko) Version/3.0.4 Safari/523.10.6
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; fr-fr) AppleWebKit/525.1+ (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; fr-fr) AppleWebKit/523.10.3 (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; fr) AppleWebKit/523.12.2 (KHTML, like Gecko) Version/3.0.4 Safari/523.12.2
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; es-es) AppleWebKit/523.15.1 (KHTML, like Gecko) Version/3.0.4 Safari/523.15
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-us) AppleWebKit/525.1+ (KHTML, like Gecko) Version/3.0.4 Safari/523.10
Mozilla/5.0 (Windows; U; Windows NT 6.0; en) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 6.0; cs) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; de) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; da-DK) AppleWebKit/523.11.1+ (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; da) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs) AppleWebKit/522.15.5 (KHTML, like Gecko) Version/3.0.3 Safari/522.15.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/523.6 (KHTML, like Gecko) Version/3.0.3 Safari/523.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/523.3+ (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ca-es) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; ru-ru) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-us) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/523.9+ (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/523.5+ (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/523.2+ (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; de-de) AppleWebKit/522.11.1 (KHTML, like Gecko) Version/3.0.3 Safari/522.12.1
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; zh) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.2; en) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; it) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; el) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Windows; U; Windows NT 5.1; cs) AppleWebKit/522.13.1 (KHTML, like Gecko) Version/3.0.2 Safari/522.13.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/522.11 (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/522+ (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/522.11 (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/522.11 (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/522.11 (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/522+ (KHTML, like Gecko) Version/3.0.2 Safari/522.12
Mozilla/5.0 (Windows; U; Windows NT 6.0; fi) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; en) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; th) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/522.4.1+ (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 5.0; en) AppleWebKit/522.12.1 (KHTML, like Gecko) Version/3.0.1 Safari/522.12.2
Mozilla/5.0 (Windows; U; Windows NT 6.0; sv-SE) AppleWebKit/523.13 (KHTML, like Gecko) Version/3.0 Safari/523.13
Mozilla/5.0 (Windows; U; Windows NT 6.0; nl) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 6.0; da-DK) AppleWebKit/523.12.9 (KHTML, like Gecko) Version/3.0 Safari/523.12.9
Mozilla/5.0 (Windows; U; Windows NT 5.2; pt) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.2; nl) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; zh) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; tr-TR) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; sv) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; ru) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR) AppleWebKit/525+ (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl-PL) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Windows; U; Windows NT 5.1; pl-PL) AppleWebKit/523.12.9 (KHTML, like Gecko) Version/3.0 Safari/523.12.9
Mozilla/5.0 (Windows; U; Windows NT 5.1; nl) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; nb) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; id) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; hr) AppleWebKit/522.11.3 (KHTML, like Gecko) Version/3.0 Safari/522.11.3
Mozilla/5.0 (Windows; U; Windows NT 5.1; fr-FR) AppleWebKit/523.15 (KHTML, like Gecko) Version/3.0 Safari/523.15
Mozilla/5.0 (Linux; U; Ubuntu; en-us) AppleWebKit/525.13 (KHTML, like Gecko) Version/2.2 Firefox/525.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/419 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/418.9 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/418.9 (KHTML, like Gecko) Safari/
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; pt-pt) AppleWebKit/418.9.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/418.8 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/418.9.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/418.9 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/419 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/418.9 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/418.9.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fi-fi) AppleWebKit/418.8 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es-es) AppleWebKit/418.8 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es) AppleWebKit/419 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en_CA) AppleWebKit/419 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/418.9 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/418.8 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/419 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418.9.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418.9 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418.9 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; tr-tr) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.9.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nb-no) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nb-no) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.9.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/417.9 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.9.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/417.9 (KHTML, like Gecko) Safari/417.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nl-nl) AppleWebKit/416.11 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; nb-no) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/416.12 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-ca) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/416.11 (KHTML, like Gecko) Safari/416.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/416.11 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/416.12 (KHTML, like Gecko) Safari/416.13
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.7 (KHTML, like Gecko) Safari/412.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS; pl-pl) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS; en-en) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es-ES) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en_US) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/412 (KHTML, like Gecko) Safari/412 Privoxy/3.0
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.6.2 (KHTML, like Gecko) Safari/412.2.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.6.2 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.6.2 (KHTML, like Gecko) Safari/412.2.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.6 (KHTML, like Gecko) Safari/412.2
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412.6 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/412 (KHTML, like Gecko) Safari/412
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.8.1 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.8.1 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.8 (KHTML, like Gecko) Safari/312.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.5 (KHTML, like Gecko) Safari/312.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/312.5 (KHTML, like Gecko) Safari/312.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es-es) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.5 (KHTML, like Gecko) Safari/312.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.5.1 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.5 (KHTML, like Gecko) Safari/312.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.5.2 (KHTML, like Gecko) Safari/312.3.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.1.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/312.1 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-ch) AppleWebKit/312.1.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-ca) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/312.1 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.1.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.1.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312.3.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-ch) AppleWebKit/312.1 (KHTML, like Gecko) Safari/312
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/125.5.6 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.11
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-ch) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-ch) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.11
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.5.7 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.5.6 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.11
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.7 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.6 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.5.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.11
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.5.7 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.5.6 (KHTML, like Gecko) Safari/125.12_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.5.6 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12_Adobe
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.5.5 (KHTML, like Gecko) Safari/125.12
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/125.5 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en_CA) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-au) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.5 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.4 (KHTML, like Gecko) Safari/100
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.4 (KHTML, like Gecko) Safari/125.9
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; es-es) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-gb) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.2 (KHTML, like Gecko) Safari/85.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; it-it) AppleWebKit/124 (KHTML, like Gecko) Safari/125.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/124 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/124 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/124 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/124 (KHTML, like Gecko) Safari/125.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/124 (KHTML, like Gecko) Safari/125
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/85.8.2 (KHTML, like Gecko) Safari/85.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-gb) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/85.8.2 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85.8.1
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/85.8.5 (KHTML, like Gecko) Safari/85
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/85.8.2 (KHTML, like Gecko) Safari/85.8
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; sv-se) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja-jp) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr-fr) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fr) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.7
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/85.7 (KHTML, like Gecko) Safari/85.5
Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092816 Mobile Safari 1.1.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; fi-fi) AppleWebKit/420+ (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/312.8.1 (KHTML, like Gecko) Safari/312.6
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/419.2 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-de) AppleWebKit/418.9.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-ch) AppleWebKit/85 (KHTML, like Gecko) Safari/85
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; de-CH) AppleWebKit/419.2 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X; da-dk) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6; en-us) AppleWebKit/528.16 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; it-IT) AppleWebKit/521.25 (KHTML, like Gecko) Safari/521.24
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-us) AppleWebKit/419.2.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/522.11.1 (KHTML, like Gecko) Safari/419.3
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit/521.32.1 (KHTML, like Gecko) Safari/521.32.1
Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en) AppleWebKit (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; es-es) AppleWebKit/531.22.7 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_6; en-us) AppleWebKit/528.16 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5; it-it) AppleWebKit/525.18 (KHTML, like Gecko)
Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.6) Gecko/2009011912 Safari/525.27.1
Mozilla/5.0 (iPod; U; CPU iPhone OS 2_2_1 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Mobile/5H11a
Mozilla/5.0 (iPod; U; CPU iPhone OS 2_2_1 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Mobile/5H11
