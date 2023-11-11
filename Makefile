.PHONY: run_website stop_website install_kind_cluster create_kind_cluster create_docker_registry connect_registry_to_kind_network
run_website:
	docker build -t explorecalifornia . && \
	docker run --rm --name explorecalifornia -d -p 80:80 explorecalifornia
stop_website:
	docker stop explorecalifornia
install_kind_cluster:
	curl --location --output ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.20.0/kind-windows-amd64 ./kind --version
create_kind_cluster: install_kind_cluster
	kind create cluster --name explorecalifornia
create_docker_registry:
	if docker ps | grep -q 'local-registry'; \
	then echo "Local registry already created" ; \
	else docker run --name local-registry -d --restart=always -p 80:80 registry=2
connect_registry_to_kind_network:
	docker network connect kind local-registry || true