kubectl create ns monitoring 
kubectl apply --server-side -f "$(pwd)/kube-prometheus/apiextensions.k8s.io_v1_customresourcedefinition_prometheuses.monitoring.coreos.com.yaml"
kubectl apply -k $(pwd)/overlays/prometheus