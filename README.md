# AsciiArtify

Project documenting the Concept, PoC, and MVP stages of implementing a GitOps platform using k3d and ArgoCD.

## 📁 Repository Structure

```
AsciiArtify/
├── Dockerfile                          # Container definition for Hello World application
├── .dockerignore                       # Excludes unnecessary files from Docker build context
├── .gitignore                          # Git ignore rules for clean repository state
│
├── doc/                                # Project documentation
│   └── Concept.md                      # Architecture notes and PoC explanation
│   └── POC.md                          # ArgoCD Proof of Concept deployment guide
│   ├── MVP.md                          # GitOps application deployment with ArgoCD
│   └── notes/
│       └── how-to-record-demo.md       # Instructions for recording and exporting demos
│
├── .data/                              # Demo artifacts (not part of runtime system)
│   └── concept_demo.gif                # Concept phase demonstration of Kubernetes cluster creation using k3d
│   └── poc_demo_ArgoCD.gif             # ArgoCD installation, configuration, and UI access
│   └── mvp_initial_cluster_check.gif   # Verification of Kubernetes cluster and ArgoCD readiness
│   └── mvp_create_app_in_argocd.gif    # Creation and synchronization of an application in ArgoCD
│   └── mvp_app_deployed.gif            # Verification of successful application deployment after sync
└   └── argo.png                        # Sample image used to demonstrate image-to-ASCII conversion

```

### Documentation

| Document | Description |
|----------|-------------|
| `doc/Concept.md` | Evaluation of Kubernetes deployment options and platform selection |
| `doc/POC.md` | Proof of Concept for deploying and configuring ArgoCD |
| `doc/MVP.md` | GitOps application deployment and synchronization workflow |

### Demo Artifacts

The `.data` directory contains recordings and supporting artifacts created during the Concept, PoC, and MVP phases of the project.

### Notes and Reference Materials

The `doc/notes` directory contains supplementary how-to guides, troubleshooting notes, and reference materials used during the Concept and PoC implementation phases.

## ✅ Project Outcome

The project successfully demonstrates:

- Kubernetes cluster deployment using k3d
- ArgoCD installation and configuration
- Access to the ArgoCD web interface
- GitOps-based application deployment
- Automatic synchronization between Git and Kubernetes

The environment is ready to support future AsciiArtify application deployments using GitOps practices.