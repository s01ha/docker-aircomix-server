# solha/aircomix-server
Docker image for running AirComix server (PHP version)

## Usage
```bash
docker create \
    --name=<your-container-name> \
    -v <path-of-comics>:/comics \
    -p <service-port>:31257 \
    solha/aircomix-server
```

## Parameters
* `-v /comics` - root directory where comics are stored
* `-p 31257` - AirComix service port

## Test
1. Launch `http://<server ip>:<service port>/comics`
2. Default username: `AirComix`
3. Default password: `y0urp@ssw0rd`

## How to change the password
* Use following command:
```bash
>>> docker exec <your-container-name> /bin/sh -c 'htpasswd -cb /var/www/comix-server/.htpasswd AirComix <your-password>'
Adding password for user AirComix
```

## References
* Base image: [webdevops/php-apache:5.6](https://hub.docker.com/r/webdevops/php-apache/)
* AirComix Server (PHP Version): https://github.com/song31/comix-server

