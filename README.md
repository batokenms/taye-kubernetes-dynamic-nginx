# In this project, you are going to create the following:

Dynamic reconfiguration of NGINX—notes and the manifests listed below:

1. Namespace
2. Service Account for the NGINX pod
3. ClusterRole
4. ClusterRoleBinding
5. Dockerfile to build the NGINX Docker image, allowing it to dynamically reload its configuration when Kubernetes ConfigMaps change; A Bash script to be added to the NGINX image
6. Tag the image
7. Login to DockerHub
8. Push the new built nginx image on to dockerhub
9. Go and add the new nginx image into the nginx deployment line 21
