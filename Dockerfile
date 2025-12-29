FROM n8nio/n8n:latest

USER root

# Criamos a pasta onde o n8n procura por nós customizados
RUN mkdir -p /home/node/.n8n/nodes

# Instalamos o nó da Evolution API nessa pasta neutra
# Usamos o --ignore-scripts para pular aquela trava do pnpm (erro 254)
RUN cd /home/node/.n8n/nodes && \
    npm init -y && \
    npm install n8n-nodes-evolution-api --ignore-scripts

# Damos permissão para o n8n conseguir ler essa pasta
RUN chown -R node:node /home/node/.n8n

USER node
