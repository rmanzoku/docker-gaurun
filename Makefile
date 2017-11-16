GAURUN_VERSION := 0.9.0
export GAURUN_VERSION

REPO := rmanzoku/gaurun
export REPO

setup:
	wget "https://github.com/mercari/gaurun/releases/download/v${GAURUN_VERSION}/gaurun-linux-amd64-${GAURUN_VERSION}.tar.gz" \
	     -O dist/gaurun-linux-amd64-${GAURUN_VERSION}.tar.gz
	tar -C ./dist -zxvf dist/gaurun-linux-amd64-${GAURUN_VERSION}.tar.gz
	ln -sf ./gaurun-${GAURUN_VERSION} dist/gaurun

build: dist/gaurun/gaurun Dockerfile
	docker build . -t ${REPO}
