# Node-Red

A CentOS/Node-Red derivative that enables secure HTTPS connectivity using a self-signed certificate pair that is generated on container startup and login authentication.

Example usage:

     sudo docker run --env password='<your password hash>' -dp 1880:1880 geocentric/node-red-secure

Then point your brower to it and login as 'admin' and your provided password:

     https://<host>:1880

See node-red.org documentation on security