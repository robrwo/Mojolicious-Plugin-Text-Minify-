package Mojolicious::Plugin::Text::Minify;

use Mojo::Base 'Mojolicious::Plugin';

use Text::Minify::XS ();

our $VERSION = 'v0.1.0';

sub register {
    my ($self, $app, $conf) = @_;
    $app->hook( after_render => sub {
        my ($c, $output, $format) = @_;
        if ($format eq "html") {
            $$output = Text::Minify::XS::minify( $$output );
        }
    });

}

1;
