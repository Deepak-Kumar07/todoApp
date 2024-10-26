# argocd install process

1. kubectl create namespace argocd
2. kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Then apply nordPort service using below command
    kubectl apply -f argocd-server.yaml

# Add the EBS CSI Helm repository
    helm repo add ebs-csi https://kubernetes-sigs.github.io/aws-ebs-csi-driver

# Install the EBS CSI driver
    helm install ebs-csi ebs-csi/aws-ebs-csi-driver --namespace kube-system --create-namespace