docker-machine create \
  --driver virtualbox \
  --swarm --swarm-image="swarm" --swarm-master \
  --swarm-discovery="consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-advertise=eth1:2376" \
node1

docker-machine create \
  --driver virtualbox \
  --swarm --swarm-image="swarm" \
  --swarm-discovery="consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-advertise=eth1:2376" \
node2

docker-machine create \
  --driver virtualbox \
  --swarm --swarm-image="swarm" \
  --swarm-discovery="consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
  --engine-opt="cluster-advertise=eth1:2376" \
node3
