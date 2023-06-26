# Architecture

The following document outlines the cloud architecture for Project Ricotta.

## Design Principles

Principles that guide the architecture include:

* Simplicity: Implementation complexity increases fragility and makes contribution more difficult.
* Cost-effectiveness: As this project supports a non-profit institution, we must make the most of our resources.
* Scalability: The architecture should be able to scale to meet the needs of the project during peak demand.
* Security: Implementing principle of least privilege, RBAC, secure defaults, separation of concerns, and defense in depth, we design a system that is secure by design.

## Diagrams

```mermaid
A[Production Traffic] --> C{Azure}
B[Staging Traffic] --> C{Azure}
C -->|Production Traffic| D[Production Subscription]
C -->|Staging Traffic| E[Staging Subscription]
D --> F[Production Resource Group]
E --> G[Staging Resource Group]
F --> H[Production App Service]
G --> I[Staging App Service]
```
