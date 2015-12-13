# Docker | SteamCMD | Ubuntu

An abstract Ubuntu docker container with `steamcmd` ready to go.

**Currently in development and not suitable for general use.**

## Usage

This container is intended to be extended rather than used directly.  When building, add an `install.txt` containing `steamcmd` commands to install the server(s) you require.

### Example

As an example, the following would install the 7 Days to Die dedicated server.

    login <steam user> <steam password>
    force_install_dir ./7dtd
    app_update 294420
    quit

Note that the `quit` at the end is important, else `steamcmd` will just sit there looking at you.

## Disclaimer

These containers are designed to be used by Zobees to host game servers for friends and family, and therefore may not suit all use cases.  That said, we are all for flexibility and would welcome pull requests and issues.
