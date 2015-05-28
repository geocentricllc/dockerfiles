# Node-Red
A CentOS/Node-Red derivative that enables HTTPS using a self-signed certificate pair that is generated on container startup.

Example usage:

     sudo docker run -dp 1880:1880 geocentric/node-red-secure

Then point your brower to it:

     https://<host>:1880

