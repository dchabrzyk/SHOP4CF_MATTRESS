# SHOP4CF MATTRESS

This repository contains deployment files needed for deployment of MAMMA components for SHOP4CF MATTRESS project.

## Prerequisites
* Docker
* Kubernetess
* PostgreSQL
* 4 preconfigured domains for application (HTTPS is needed):
    * appname.domain.com (mamma client application - should replace ``<client_url>`` variable in yml files)
    * terminal.appname.domain.com (operators terminal client application - should replace ``<terminal_url>`` variable in yml files)
    * api.appname.domain.com (application api - should replace ``<api_base_url>`` variable in yml files)
    * auth.appname.domain.com (keycloak application - should replace ``<keycloak_frontend_url>`` variable in yml files)



## Database initialization
To initialize database you will need **Docker** to run initialization scripts.
Execute ``Database/initialize.sh -a HOST -p PORT -d DATABASE_NAME -w PGADMIN_PASSWORD`` (bash) or ``Database/initialize.ps1 -dbHost HOST -dbPort PORT -dbName DATABASE_NAME -pgPass PGADMIN_PASSWORD`` (powershell).

Default ``user/password`` is ``mamma_user/mamma_pass``.

## Runtime environment configuration
Adapt required values in ``k8s/keycloak.yml`` and ``k8s/mamma-api.yml`` files. 
Values required for replacement are wrapped in ``<>`` braces.

## Deployment to Kubernetes
To run application stack you will need **kubernetes cluster**.
To deploy application stack to kubernetes execute the ``k8s/run-stack.ps1`` or ``k8s/run-stack.sh`` scripts. 
Take a look inside to know what it does.

#### _Note_

Script requires the namespace name. For example: ``run-stack.sh my-namespace``.
