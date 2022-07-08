# Ghost Kubernetes AWS

## Requirements
- [mailgun](https://mailgun.com) account and the related smtp credentials
- eks cluster running in aws
- [aws-ebs-csi-driver](https://docs.aws.amazon.com/eks/latest/userguide/ebs-csi.html) cluster addon installed
- [aws-load-balancer-controller](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html) setup in the cluster

#### example terraform eks cluster can be found [here](https://github.com/mskymoore/terraform-eks-cluster)
---
## Deploy

1. Populate ```ghost/0300_ghost_secrets.yml``` using the following command:
    ```bash
    echo -n "SOMESECRET" | base64
    ```

2. Configure ```ghost/0500_ghost_ingress.yml``` with the the arn of your ssl certificate.
3. Deploy the application
    ```bash
    ./stack.sh create ghost
    ```
---

## Update deployment

```bash
./stack.sh apply ghost
```
---

## Remove from cluster
```bash
./stack.sh delete ghost
```
---
