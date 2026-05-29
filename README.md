# AsciiArtify
Infrastructure PoC for local Kubernetes development, GitOps workflows, and automated MVP delivery using k3d and ArgoCD.

## 📁 Repository Structure

```
AsciiArtify/
├── Dockerfile                      # Container definition for Hello World application
├── .dockerignore                   # Excludes unnecessary files from Docker build context
├── .gitignore                      # Git ignore rules for clean repository state
│
├── doc/                            # Project documentation
│   └── Concept.md                  # Architecture notes and PoC explanation
│   └── POC.md                      # ArgoCD Proof of Concept deployment guide
│   └── notes/
│       └── how-to-record-demo.md   # Instructions for recording and exporting demos
│
├── .data/                          # Demo artifacts (not part of runtime system)
│   └── demo.gif                    # asciinema recording exported as GIF
│   └── demo_ArgoCD.gif             # ArgoCD installation and access demonstration
```

### Documentation

* **Concept.md** – describes the analysis and selection of the Kubernetes platform used for the project.
* **POC.md** – documents the deployment of ArgoCD on Kubernetes and provides instructions for accessing the ArgoCD web interface.

### Demo Artifacts

The `.data` directory contains recordings demonstrating

### Notes and Reference Materials

The `doc/notes` directory contains supplementary how-to guides, troubleshooting notes, and reference materials used during the Concept and PoC implementation phases.