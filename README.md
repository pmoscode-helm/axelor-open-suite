# axelor-open-suite Helm Chart
![Version: 7.2.47](https://img.shields.io/badge/Version-7.2.47-informational?style=flat-square)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/axelor-open-suite)](https://artifacthub.io/packages/search?repo=axelor-open-suite)

Open source ERP and BPM platform.

Axelor Open Suite reduces the complexity and improve responsiveness of business processes.
Thanks to its modularity, you can start with few features and then activate other modules when needed.

## Get Repo Info

    helm repo add my-axelor https://pmoscode-helm.github.io/axelor-open-suite/
    helm repo update

## Install chart

    helm install [RELEASE_NAME] my-axelor/axelor-open-suite

The command deploys axelor-open-suite on the Kubernetes cluster in the default configuration.

See configuration below.

See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation.

## Uninstall Chart

    helm uninstall [RELEASE_NAME]

This removes all the Kubernetes components associated with the chart and deletes the release.

See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation.

## Upgrading Chart

    helm upgrade [RELEASE_NAME] [CHART] --install

See [helm upgrade](https://helm.sh/docs/helm/helm_upgrade/) for command documentation.

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 12.8.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| axelor.applicationLocale | string | `"de_DE"` | Apps locale |
| axelor.applicationMode | string | `"dev"` | Axelor's current app environment - dev or prod (NOTE. On "prod" the "admin" account is disabled and has to enabled in the database...) |
| axelor.importDemoData | bool | `true` | Should demo data be imported? |
| axelor.maxUploadSize | int | `100` | Max upload size in requests in MB |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` | PullPolicy (change to "Always" when using "latest") |
| image.repository | string | `"pmoscode/axelor-open-suite"` | base image |
| image.tag | string | `""` | If not set, uses chart appVersion |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"1800"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"1800"` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `false` | Enable persistence |
| persistence.existingClaim | string | `""` | Use, when you have an existing PVC |
| persistence.size | string | `"50Gi"` |  |
| persistence.storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| postgresql.auth.database | string | `"axelor"` | Default database to use |
| postgresql.auth.username | string | `"axelor"` | Default db user |
| postgresql.enabled | bool | `true` | Build in postgresql db |
| resources.requests.cpu | string | `"300m"` |  |
| resources.requests.memory | string | `"512Mi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1001` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

In the "axelor" section: These are not all possible configuration options, but the ones I use. If you want more specific options, feel free to open an issue or provide an PR.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| pmoscode | <info@pmoscode.de> | <pmoscode.de> |

## Contributing

If you want to add features or bugfixes, please open an issue (either feature or bug).

You also need to copy the ".env-template" file as ".env" and configure it for your needs.

The Taskfile itself needs this tools to run the tasks:
- https://github.com/helm/chart-releaser
- https://helm.sh/docs/intro/quickstart/
- https://github.com/norwoodj/helm-docs
- https://github.com/pawamoy/git-changelog
