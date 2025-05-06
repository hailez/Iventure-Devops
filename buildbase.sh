BASE_DIR=../bases
OUTPUT_DIR=$(pwd)/kube-prometheus
ROOT_DIR=$(pwd)

#--------------------------------
echo kustomize argocd
cd "$ROOT_DIR"
mkdir $OUTPUT_DIR
kustomize build --enable-helm $BASE_DIR --output $OUTPUT_DIR
cd $OUTPUT_DIR
kustomize create --autodetect