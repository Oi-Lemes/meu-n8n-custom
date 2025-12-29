FROM n8nio/n8n:latest

USER root

# Instalamos o nó diretamente dentro da pasta do n8n
# Usamos --ignore-scripts para ignorar a trava do pnpm que causou o erro 254
RUN cd /usr/local/lib/node_modules/n8n && npm install n8n-nodes-evolution-api --ignore-scripts

USER node
