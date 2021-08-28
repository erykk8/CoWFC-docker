# CoWFC-docker
Dockerized [CoWFC](https://github.com/EnergyCube/CoWFC)

The Docker image executes the same commands as the instructions in EnergyCube's fork of CoWFC. It was made to make it easier to run the server without polluting or doing anything destructive to the host machine.

## Building
Clone this repository and in main directory run

`$ docker build -t erykk8/CoWFC .`

## Running
After building docker image you can run it, but you need to ensure the [required ports](https://github.com/barronwaffles/dwc_network_server_emulator/wiki/Troubleshooting#port-forwarding) are exposed.

Due to the large amount of ports required, it is advised to run it in host network mode (Linux host required). This is convenient, but insecure, as the container has access to local system services.
 
`$ docker run --network="host" -d erykk8/CoWFC`
