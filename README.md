# Docker | SteamCMD | Ubuntu

An abstract Ubuntu docker container with `steamcmd` ready to go.

**Currently in development and not suitable for general use.**

## Security implications

Some servers are not available via anonymous login and therefore needs to be authenticated with your Steam username and password prior to installation.

This means if you have authenticated to install a game then you should **never push your built image to a public registry**.

If you to build an image for a game that requires Steam authentication, either build the image on your server directly with docker and negate the need for a registry, or use a private registry.

## Usage

This container is intended to be extended rather than used directly.  When building, add an `install.txt` containing `steamcmd` commands to install the server(s) you require.

### Example

As an example, the following would install the 7 Days to Die dedicated server:

    login <steam user> <steam password>
    force_install_dir ./7dtd
    app_update 294420

## Disclaimer

These containers are designed to be used by Zobees to host game servers for friends and family, and therefore may not suit all use cases.  That said, we are all for flexibility and would welcome pull requests and issues.
