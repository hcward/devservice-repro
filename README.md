# Podman Sidecar Quarkus DevServices Reproduction

Quick reproduction to show issues with Quarkus DevServices when Podman is running as a sidecar container.

## Reproduction Steps

1. docker compose up -d
2. docker compose exec ${dev-container-name} /bin/bash
3. mvn quarkus:dev