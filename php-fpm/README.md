# PHP-FPM

The official [PHP image](https://hub.docker.com/_/php/) does not embed any extension by default but provide a simple tool to add them. However it requires you to make a new Dockerfile.

This is just my personnal image, with the extensions I need to run some PHP softwares. I don't want to built it on my machine so I publish it here to be able to add an automatic build to the Docker hub.

The image is used the same way as the official one, feel free to use mine as a base if you need PHP extensions too.