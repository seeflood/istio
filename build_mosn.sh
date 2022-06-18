address=$1 # your download service address
export ISTIO_ENVOY_VERSION=$2 # MOSN Version, can be any value.
export ISTIO_ENVOY_RELEASE_URL=http://$address/mosn.tar.gz
export ISTIO_ENVOY_CENTOS_RELEASE_URL=http://$address/mosn-centos.tar.gz
export ISTIO_ENVOY_MACOS_RELEASE_URL=http://$address/mosn-macos.tar.gz
export ISTIO_ENVOY_MACOS_RELEASE_NAME=mosn-$2 # can be any value
export SIDECAR=mosn

make clean # clean the cache
make docker.proxyv2 \
 SIDECAR=$SIDECAR \
 ISTIO_ENVOY_VERSION=$ISTIO_ENVOY_VERSION \
 ISTIO_ENVOY_RELEASE_URL=$ISTIO_ENVOY_RELEASE_URL \
 ISTIO_ENVOY_CENTOS_RELEASE_URL=$ISTIO_ENVOY_CENTOS_RELEASE_URL \
 ISTIO_ENVOY_MACOS_RELEASE_URL=$ISTIO_ENVOY_MACOS_RELEASE_URL \
 ISTIO_ENVOY_MACOS_RELEASE_NAME=$ISTIO_ENVOY_MACOS_RELEASE_NAME