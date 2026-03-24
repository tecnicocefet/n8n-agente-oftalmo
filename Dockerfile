# Dockerfile
FROM n8nio/n8n:1.123.26

# Mudar para root para poder instalar npm packages
USER root

# Instala o n8n-nodes-whapi forçando ignorar conflitos de peer deps
RUN npm install n8n-nodes-whapi --legacy-peer-deps

# Voltar para o usuário node do n8n
USER node