FROM n8nio/n8n:latest

USER root

# Instala o nó da Evolution API permanentemente
RUN npm install -g n8n-nodes-evolution-api

USER node
