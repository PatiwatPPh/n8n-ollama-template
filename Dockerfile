FROM docker/compose:latest

# Install curl and other utilities
RUN apk add --no-cache curl bash

WORKDIR /app

# Copy all configuration files
COPY docker-compose.yml .
COPY wait-for-ollama.sh .

# Make scripts executable
RUN chmod +x wait-for-ollama.sh

# Expose ports for n8n and Ollama
EXPOSE 5678 11434

# Start services
CMD ["up", "--build", "--remove-orphans"]