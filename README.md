# In this project, you are going to create the following:

Dynamic reconfiguration of NGINX—notes and the manifests listed below:

1. Namespace
2. Service Account for the NGINX pod
3. ClusterRole
4. ClusterRoleBinding
5. Dockerfile to modify the NGINX Docker image, allowing it to dynamically reload its configuration when Kubernetes ConfigMaps change
6. A Bash script to be added to the NGINX image
