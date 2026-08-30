FROM searxng/searxng:latest
EXPOSE 10000
ENV SEARXNG_SETTINGS="{\"server\":{\"port\":10000,\"bind_address\":\"0.0.0.0\",\"secret_key\":\"$(openssl rand -hex 32)\"}}"
