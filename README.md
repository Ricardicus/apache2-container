# A container for a file server

Useful for distributing resources on a network.

# Docker commands

Start by building this image

´´´
docker build -t apache2:1.0 . 
´´´

Say the absolute path to the folder
you want to expose is A/B/C, then you
should run the image using this command:

´´´
docker run --rm -dit -p 8080:80 -v A/B/C:/var/www/listing apache2:1.0 
´´´

# Open the browser, visit localhost:8080 and you will have this server running