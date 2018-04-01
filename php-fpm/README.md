# PHP-FPM

![https://hub.docker.com/r/angristan/php-fpm/](https://img.shields.io/docker/build/angristan/php-fpm.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/php-fpm/](https://img.shields.io/microbadger/image-size/angristan/php-fpm.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/php-fpm/](https://img.shields.io/microbadger/layers/angristan/php-fpm.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/php-fpm/](https://img.shields.io/docker/pulls/angristan/php-fpm.svg?maxAge=3600&style=flat-square) ![https://hub.docker.com/r/angristan/php-fpm/](https://img.shields.io/docker/stars/angristan/php-fpm.svg?maxAge=3600&style=flat-square)

![PHP](https://cdn-1.wp.nginx.com/wp-content/uploads/2016/03/PHP-logo.svg_.png)

This image is available on the [Docker Hub](https://hub.docker.com/r/angristan/php-fpm/).

The official [PHP image](https://hub.docker.com/_/php/) does not embed any extension by default but provide a simple tool to add them. However it requires you to make a new Dockerfile.

This is just my personnal image, with the extensions I need to run some PHP softwares. I don't want to built it on my machine so I publish it here to be able to add an automatic build to the Docker hub.

The image is used the same way as the official one, feel free to use mine as a base if you need PHP extensions too.