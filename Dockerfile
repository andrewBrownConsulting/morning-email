FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    N8N_PROTOCOL=http

EXPOSE 5678

CMD ["start"]
