Implementacion de Soluciones Cloud

Recursos utilizados:

Dockerfile
DockerHub
Terraform
EKS
Loadn Balancer
Group Autoscale
Persistent Volume
argocd
metricserver
HPA
Readiness and livenes probes
frontweb e-commerce
backend e-commerce
lens

El proceso de implementación está completamente automatizado, desde principio a fin, el
El proceso completo de deploy dura aproximadamente 15 minutos, desde que se ejecuta
terraform apply hasta que la web y todas sus dependencias están disponibles.
Por cada cambio en el código fuente de la aplicación, se creará automáticamente una nueva imagen Docker, la cual será usada por los manifiestos que utiliza argocd para sincronizar

Manifiestos Terraform:
https://github.com/cheredia2k12/obliga_isc/tree/main/terraform_cluster_eks
Manifiestos de e-commerce k8s:
https://github.com/cheredia2k12/obliga_isc/tree/main/k8s_deployments
Manifiestos de lens/prometheus:
https://github.com/cheredia2k12/lens/tree/master/src/features/metrics
Codigo fuente de e-commerce y Dockerfile:
https://github.com/cheredia2k12/obliga_isc
Repositorio de imagen de contenedor e-commerce:
https://hub.docker.com/r/cheredia2k12/ecomm
