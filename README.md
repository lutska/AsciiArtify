# AsciiArtify
Infrastructure PoC for local Kubernetes development, GitOps workflows, and automated MVP delivery using k3d and ArgoCD.

## 📁 Repository Structure

AsciiArtify/
├── Dockerfile              # Container definition for Hello World application
├── .dockerignore           # Excludes unnecessary files from Docker build context
├── .gitignore              # Git ignore rules for clean repository state
│
├── doc/                    # Project documentation
│   └── Concept.md          # Architecture notes and PoC explanation
│
├── .data/                  # Demo artifacts (not part of runtime system)
│   └── demo.gif            # asciinema recording exported as GIF