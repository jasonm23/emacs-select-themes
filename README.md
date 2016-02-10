# Emacs Select Themes

In Emacs using `M-x load-theme` will load a color theme, however it
will also leave any existing color themes loaded too.

This is a bit of a problem, because Emacs will slow down when a few
color themes are loaded.

Select themes is designed to work around this by disabling any
currently enabled themes before loading the selected theme.

It's also not possible to explicitly set the Emacs default theme using
load-theme, so **Select themes** takes care of that too, allowing you
to simply select default.

## Usage

    M-x select-themes

Ido or whatever function you have set to override `completing-read`
will be used to manage selection.

Note: This package is a simplified, UI agnostic version of **helm-themes**.
