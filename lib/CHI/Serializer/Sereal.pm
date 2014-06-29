package CHI::Serializer::Sereal;

# DATE
# VERSION

use Moo;
#use strict;   # implied by Moo
#use warnings; # implied by Moo

use Sereal qw(encode_sereal decode_sereal);

sub serialize {
    return encode_sereal($_[1]);
}

sub deserialize {
    return decode_sereal($_[1]);
}

sub serializer {
    return 'Sereal';
}

1;
# ABSTRACT: Sereal serializer for CHI

=for Pod::Coverage ^(serialize|deserialize|serializer)$

=head1 SEE ALSO

L<CHI>
