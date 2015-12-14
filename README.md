# zobees/steamcmd-ubuntu

An abstract Ubuntu docker container with `steamcmd` ready to go.

**Currently in development and not suitable for general use.**

## Security implications

Not all games are available via anonymous login and therefore need to be authenticated with your Steam username and password prior to installation.

This means if you have authenticated to install a game then you should **never push your built image to a public registry**.

If you to build an image for a game that requires Steam authentication, either build the image on your server directly with docker, or use (or create) a private **secured and authenticated** registry.

## Usage

This container is intended as a base for Steam game containers to extend, rather than to be run directly.

Create an `install.txt` in the current working directory of your docker build command containing `steamcmd` commands to install the server(s) you wish, and then run `./install.sh` in your `Dockerfile`.

For example, the following `install.txt` would install the 7 Days to Die dedicated server:

    login <steam user> <steam password>
    force_install_dir ./7dtd
    app_update 294420

An appropriate `Dockerfile` could then look like this:

    FROM zobees/steamcmd-ubuntu
    MAINTAINER some@body.com

    USER daemon
    WORKDIR /opt/steam/steamcmd
    RUN ./install.sh

Then run `docker build .` in the same directory as these files and voila, you should end up with an image containing your Steam game.

**Do not push your built image to a public registry if you have authenticated.  Read the security implications above.**

Bear in mind that you most likely won't be able to use your image without some extra configuration - but that's for you to figure out on a per-game basis.  You could take a look at [zobees/docker-7daystodie](https://github.com/zobees/docker-7daystodie) to see how we're using this image and go from there.

### Changelog

 * **0.0.2** Changed user from `steam` to `daemon` (1000:1000) and moved from `/home/steam` to `/opt/steam`
 * **0.0.1** Initial release

## Disclaimer

These containers are designed to be used by Zobees to host game servers for friends and family, and therefore may not suit all use cases.  That said, we are all for flexibility and would welcome pull requests and issues.
