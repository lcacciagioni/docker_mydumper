# mydumper / myloader docker image

This image aims to be an easy to use mydumper docker image using the [/dumpbridge](dumpbridge) shell script as the default command it will look for certain environmental variables and then do the following dump and restore of the corresponding database.

## Environmental variables

* `ORIGIN_DB_NAME`
* `ORIGIN_DB_HOST`
* `ORIGIN_DB_PORT`
* `ORIGIN_DB_PASS`
* `ORIGIN_DB_USER`
* `DEST_DB_NAME`
* `DEST_DB_HOST`
* `DEST_DB_PORT`
* `DEST_DB_PASS`
* `DEST_DB_USER`

## Usage mode

Try to have a folder writable by everyone in your pc since the image runs as `root` user.
```bash
$ sudo mkdir /tmp/dumpdir
$ sudo chmod 0777 /tmp/dumpdir
$ docker run --env-file=~/.env -v "/tmp/dumpdir:/dumpdir:rw"
```
The `env-file` is a simple txt file with the following format:
```
ORIGIN_DB_NAME=...
ORIGIN_DB_HOST=...
ORIGIN_DB_PORT=...
ORIGIN_DB_PASS=...
ORIGIN_DB_USER=...
DEST_DB_NAME=...
DEST_DB_HOST=...
DEST_DB_PORT=...
DEST_DB_PASS=...
DEST_DB_USER=...
```
using the previous `env-file` example you can setup all the variables that you need to execute the dump of you database.

> Replace the `...` with your information.
