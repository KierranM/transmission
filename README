#kierranm/transmission
<i>A Docker container that runs the TransmissionBT daemon with the web UI on 9091</i>

This image is a simple transmission-daemon docker container. Once started it will
expose the transmission web UI on port 9091.

It has been set up to use the following folders/mounts:
 * /transmission -> The transmission home directory
 * /transmission/config -> The configuration folder, where the default config is saved
 * /transmission/downloads -> Where files will be downloaded to
 * /transmission/watch -> Where transmission will automatically detect torrent files and download them
 * /transmission/incomplete -> Where transmission will store files that aren't fully downloaded

 ##User Authentication
 The username and password are set to rpc_username and rpc_password by default,
 I highly recommend that you change these, the container will automatically substitute
 these values with the values of the environment variables ```USERNAME``` and ```PASSWORD```
 ##Running
 To run a new container simply run:
 ```bash
  docker run -d --name="transmission" \
    -v /path/to/all/transmission/stuff:/transmission \
    -p 9091:9091 \
    kierranm/transmission
 ```

 Or if you prefer to use a more configured container:
 ``` bash
  docker run -d --name="transmission" \
    -v /path/to/downloads:/transmission/downloads \
    -v /path/to/watch/dir:/transmission/watch \
    -v /path/to/incomplete:/transmission/incomplete \
    -v /path/to/config:/transmission/config \
    -e USERNAME="myusername" \
    -e PASSWORD="supersecret" \
    -p 9091:9091 \
    kierranm/transmission
 ```
