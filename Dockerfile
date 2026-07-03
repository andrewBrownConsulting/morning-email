FROM n8nio/n8n:1.103.2

# App Platform sets PORT at runtime. n8n reads N8N_PORT.
ENV N8N_PORT=5678

EXPOSE 5678
