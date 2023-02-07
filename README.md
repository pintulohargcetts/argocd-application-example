# argocd-application-example
argocd-application-example with apps of app pattern , bootstraping everything with single init script 
.
├── README.md
├── argocd-apps
│   ├── apps-1
│   │   └── application.yaml
│   ├── apps-2
│   │   └── application.yaml
│   ├── apps-3
│   │   └── application.yaml
│   └── cert-manager
│       └── application.yaml
├── bootstrap
│   ├── init.sh
│   ├── manifests
│   │   ├── application.yaml
│   │   └── project.yaml
│   └── values.yaml
└── my-apps
    ├── apps-1
    │   ├── deployment.yaml
    │   └── service.yaml
    ├── apps-2
    │   ├── deployment.yaml
    │   └── service.yaml
    └── apps-3
        ├── Chart.yaml
        ├── templates
        │   ├── _helpers.tpl
        │   ├── deployment.yaml
        │   └── service.yaml
        └── values.yaml