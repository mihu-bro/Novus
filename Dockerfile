FROM searxng/searxng:latest
EXPOSE 10000
RUN sed -i 's/port: 8888/port: 10000/' /etc/searxng/settings.yml
RUN sed -i 's/bind_address: "127.0.0.1"/bind_address: "0.0.0.0"/' /etc/searxng/settings.yml
RUN sed -i "s|secret_key:.*|secret_key: \"$(openssl rand -hex 32)\"|g" /etc/searxng/settings.yml
