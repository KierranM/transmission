#kierranm/transmission
<i>A Docker container that runs the TransmissionBT daemon with the web UI on 9091</i>

This image is a simple transmission-daemon docker container. Once started it will
expose the transmission web UI on port 9091.

It has been set up to use the following folders/mounts:
 * /transmission -> The transmission home directory

 This is where all of your config and downloads will be stored
 
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
    -p 54321:54321 \
    kierranm/transmission
 ```

