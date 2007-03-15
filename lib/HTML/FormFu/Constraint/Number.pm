package HTML::FormFu::Constraint::Number;

use strict;
use warnings;
use base 'HTML::FormFu::Constraint';

use Scalar::Util qw/ looks_like_number /;

sub constrain_value {
    my ( $self, $value ) = @_;

    return 1 if !defined $value || $value eq '';

    my $ok = looks_like_number($value);

    return $self->not ? !$ok : $ok;
}

1;

__END__

=head1 NAME

HTML::FormFu::Constraint::Number - Number constraint

=head1 SYNOPSIS

    $form->constraint( Number => 'foo' );

=head1 DESCRIPTION

Number constraint.

Is a sub-class of, and inherits methods from L<HTML::FormFu::Constraint>

L<HTML::FormFu::FormFu>

=head1 AUTHOR

Carl Franks C<cfranks@cpan.org>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify it under
the same terms as Perl itself.
