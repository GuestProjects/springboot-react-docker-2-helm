# springboot-react-docker-2-helm

## Steps to deploy application on k8s cluster
### Build docker image for postgres
* cd postgress
* docker build -t vaccinatie_punt_inventaris-main-postgres .

### Build docker image for backend-inventaris
* cd backend-inventaris
* docker build -t vaccinatie_punt_inventaris-main-backend .

### Build docker image for front-end
* cd front-end
* docker build -t vaccinatie_punt_inventaris-main-frontend .

You can execute above command as it is. If you have given different image name in docker build command, please make sure to update image name in helm/values.yaml for all apps.

### Deploy helm package
You can update postgres password and other variables in helm/values.yaml file or leave to default to "postgres"
* cd helm
* helm install <releaseName> . (for example : helm install vaccinatie_punt_inventaris .)
You can also install in a different namespace
* helm install <releaseName> . -n <namespaceName>
