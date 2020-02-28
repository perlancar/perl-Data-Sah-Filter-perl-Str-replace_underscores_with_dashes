package Data::Sah::Filter::perl::Str::replace_underscores_with_dashes;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 1,
        summary => 'Replace underscores in string with dashes',
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};
    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; \$tmp =~ s/_/-/g; \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$


=head1 SEE ALSO

L<Data::Sah::Filter::perl::Str::replace_dashes_with_underscores>
