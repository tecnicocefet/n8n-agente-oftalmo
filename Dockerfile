FROM n8nio/n8n:latest

# Ativa autenticação básica
ENV N8N_BASIC_AUTH_ACTIVE=true

# Define timezone
ENV GENERIC_TIMEZONE=America/Sao_Paulo

# Instala Node.js e Express (Node já vem no n8n, só precisa instalar dependência)
USER root
RUN npm install express

# Copia o servidor Whapi para dentro do container
COPY whapi-server.js /whapi-server.js

# Expõe porta do Whapi (n8n continua na 5678 por padrão)
EXPOSE 3001

# Rodar n8n e Whapi juntos
CMD n8n start & node /whapi-server.js