# Podman Sidecar Quarkus DevServices Reproduction

Quick reproduction to show issues with Quarkus DevServices when Podman is running as a sidecar container.

## Reproduction Steps

1. podman compose up -d
2. podman exec -it devservice-repro-dev-1 mvn quarkus:dev
