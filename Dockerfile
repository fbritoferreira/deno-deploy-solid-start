FROM ghcr.io/fbritoferreira/deno-deploy-solid-start:v1.1.1

ENTRYPOINT ["/tini", "--", "docker-entrypoint.sh"]