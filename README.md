# Packer Dockerfile (rosstimson/packer)

This repository contains a **Dockerfile** to build [Packer][packer]
alongside Ruby.

I primarily use the container that this builds with [Drone][drone]
continuous integration to automate and test the building of custom
Amazon AMIs.

## Dependencies

* [Official Ruby 2.2 image][ruby-image]

## Installation

1. Install [Docker][docker]
2. Build image from Dockerfile:

    `docker build -t rosstimson/packer github.com/rosstimson/docker-packer`

_Where `-t rosstimson/packer` is just a tag for the container, you can
name this as you wish._

## Contact

* Website:  [rosstimson.com][website]
* Email:    [ross@rosstimson.com][email]
* Twitter:  [@rosstimson][twitter]

## License

Released under the [WTFPL](http://wtfpl.net) - Do WTF You Want to Public
License.



[website]:        https://rosstimson.com
[email]:          mailto:ross@rosstimson.com
[twitter]:        https://twitter.com/rosstimson

[packer]:         http://www.packer.io
[docker]:         https://www.docker.io
[ruby-image]:     https://registry.hub.docker.com/_/ruby
[drone]:          https://drone.io
