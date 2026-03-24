FROM n8nio/n8n:latest

# Ativa autenticação básica
ENV N8N_BASIC_AUTH_ACTIVE=true

# Define timezone
ENV GENERIC_TIMEZONE=America/Sao_Paulo