install: up ssh-config prepare apply

up:
	vagrant up

prepare:
	ssh search01.local "cd /vagrant && sudo puppet module install elasticsearch-elasticsearch"
	ssh search02.local "cd /vagrant && sudo puppet module install elasticsearch-elasticsearch"

ssh-config:
	vagrant ssh-config search01 --host search01.local >> ~/.ssh/config
	vagrant ssh-config search02 --host search02.local >> ~/.ssh/config

apply:
	ssh search01.local "cd /vagrant && sudo puppet apply --modulepath=/etc/puppet/modules:modules:roles manifests/search.pp"
	ssh search02.local "cd /vagrant && sudo puppet apply --modulepath=/etc/puppet/modules:modules:roles manifests/search.pp"
