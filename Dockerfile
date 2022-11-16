FROM ghcr.io/fbritoferreira/deno-deploy-solid-start:latest

ENTRYPOINT ["/tini", "--", "docker-entrypoint.sh"]