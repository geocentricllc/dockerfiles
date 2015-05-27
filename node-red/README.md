# Node-Red
A CentOS/Node-Red derivative that enables HTTPS using a self-signed certificate pair that is generated on container startup.  Also, enables user/password setup via command line env  params.

Example usage:

     sudo docker run --env username=<username> --env password=<password> -dp 1880:1880 geocentric/node-red

Then point your brower to it:

     https://<host>:1880

