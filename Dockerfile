FROM n8nio/n8n:latest

# Create app directory
WORKDIR /usr/src/app

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=Rajvi
ENV N8N_BASIC_AUTH_PASSWORD=!a9q2kFe3aK.Lti
ENV WEBHOOK_URL=https://slack-app-name.onrender.com
ENV N8N_PROTOCOL=https
ENV N8N_HOST=slack-app-name.onrender.com
ENV EXECUTIONS_DATA_PRUNE=true
ENV EXECUTIONS_DATA_MAX_AGE=168
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]