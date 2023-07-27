# Ghost Kubernetes AWS

## Requirements
- [mailgun](https://mailgun.com) account and the related smtp credentials
- eks cluster running in aws
- [aws-ebs-csi-driver](https://docs.aws.amazon.com/eks/latest/userguide/ebs-csi.html) cluster addon installed
- [aws-load-balancer-controller](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html) setup in the cluster
- [hashicorp vault](https://www.hashicorp.com/products/vault) deployed, or you can create secrets manually and update manifests.

#### example terraform eks cluster can be found [here](https://github.com/mskymoore/terraform-eks-cluster)
---
## Deploy

1. Configure `secrets.yaml` and `kustomization.yaml` as desired, then:
    ```bash
    cd environments/skymoore.com
    kustomize build . | k apply -f -
    ```
---
