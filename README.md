# NAME

Mojolicious::Plugin::Text::Minify - remove HTML indentation on the fly

# VERSION

version v0.2.4

# SYNOPSIS

```
# Mojolicious::Lite
plugin "Text::Minify";

# Mojolicious
$app->plugin("Text::Minify");
```

# DESCRIPTION

This plugin uses [Text::Minify::XS](https://metacpan.org/pod/Text%3A%3AMinify%3A%3AXS) to remove indentation and
trailing whitespace from HTML content.

If the `mojox.no-minify` key in the stash is set to a true value,
then the result will not be minified.

You can also use of the minifier conditional on the application mode

```
plugin 'Text::Minify' if app->mode eq "production";
```

Note that this is naive minifier which does not understand markup, so
newlines will still be collapsed in HTML elements where whitespace is
meaningful, e.g. `pre` or `textarea`.

# SEE ALSO

[Text::Minify::XS](https://metacpan.org/pod/Text%3A%3AMinify%3A%3AXS)

[Plack::Middleware::Text::Minify](https://metacpan.org/pod/Plack%3A%3AMiddleware%3A%3AText%3A%3AMinify)

# SOURCE

The development version is on github at [https://github.com/robrwo/Mojolicious-Plugin-Text-Minify](https://github.com/robrwo/Mojolicious-Plugin-Text-Minify)
and may be cloned from [git://github.com/robrwo/Mojolicious-Plugin-Text-Minify.git](git://github.com/robrwo/Mojolicious-Plugin-Text-Minify.git)

# BUGS

Please report any bugs or feature requests on the bugtracker website
[https://github.com/robrwo/Mojolicious-Plugin-Text-Minify/issues](https://github.com/robrwo/Mojolicious-Plugin-Text-Minify/issues)

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

# AUTHOR

Robert Rothenberg <rrwo@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2021-2023 by Robert Rothenberg.

This is free software, licensed under:

```
The Artistic License 2.0 (GPL Compatible)
```
