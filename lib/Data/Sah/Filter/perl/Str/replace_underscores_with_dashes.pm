package Data::Sah::Filter::perl::Str::replace_underscores_with_dashes;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 1,
        summary => 'Replace underscores in string with dashes',
        examples => [
            {value=>'foo'},
            {value=>'foo_bar', filtered_value=>'foo-bar'},
        ],
        description => <<'_',

This is mostly created as a counterpart for the replace_dashes_with_underscores
filter (<pm:Data::Sah::Filter::perl::Str::replace_dashes_with_underscores>). So
far I haven't got a practical use for this.

_
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
