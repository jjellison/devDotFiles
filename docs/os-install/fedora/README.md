# Fedora


Typically, the Fedora versions I use are imutable OS's with the use of `toolbox` to use for development.
This makes it nice for isolating dev files, but can prove a little cumbersome for installation purposes.
Following this guide should result in a pretty easy setup.

1. From your regular OS terminal (non toolbox) run `scripts/fedora/os.sh`.
    - This will enable you to use the [devbox](#devbox)
1. Enter into your toolbox (assuming using the word devbox) and run `scripts/fedora/toolbox.sh`.

You should now be good to go! 

<a name="devbox"></a>
## devbox cmd
The `devbox` cmd is provided so that you are able to enter your devbox while carrying over a few key host env vars into the container.
`smart-splits.nvim` requires the use of communicating to and from WezTerm via an env var `WEZTERM_PANE`, `TERM_PROGRAM` and another one. 
The files `scripts/fedora/devbox` just cascades a few of those env vars into the toolbox and then launches it for you.
- TODO: maybe add a param to name the specific devbox???
