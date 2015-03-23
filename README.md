# docker-ssh-client-light
A light ssh client using Alpine Linux as a base. Useful for ssh tunnels in Docker.

## Example of a tunnel to a remote mongodb server


```bash
LOCAL_PORT=27017
REMOTE_PORT=27017
SSH_HOST="my.mongo.server"
SSH_PORT=22
PRIVATE_KEY_PATH="/path/to/id_rsa"
SSH_USER="tunnel_user"


docker run -d --name sample-tunnel -p $LOCAL_PORT:$REMOTE_PORT \
-v $PRIVATE_KEY_PATH:/ssh_key/id_rsa:ro iadknet/ssh-client-light \
-NTC -o ServerAliveInterval=60 -o GatewayPorts=true -o ExitOnForwardFailure=yes \
-o StrictHostKeyChecking=no -L $LOCAL_PORT:localhost:$REMOTE_PORT \ 
$SSH_USER@$SSH_HOST -p $SSH_PORT -i "/ssh_key/id_rsa"

```

