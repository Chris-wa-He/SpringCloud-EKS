aws eks describe-cluster --name eksworkshop-eksctl --query cluster.identity.oidc.issuer --output text
eksctl utils associate-iam-oidc-provider --approve --cluster eksworkshop-eksctl
eksctl create iamserviceaccount --name spring-cloud --namespace default --cluster eksworkshop-eksctl --attach-policy-arn arn:aws:iam::aws:policy/AmazonSSMReadOnlyAccess --approve --override-existing-serviceaccounts
