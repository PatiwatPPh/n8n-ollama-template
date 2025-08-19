# ใช้ Alpine image ที่มี tools พร้อม
FROM alpine:latest

# Install docker-compose และ tools จำเป็น
RUN apk add --no-cache \
    docker-compose \
    curl \
    bash \
    wget

WORKDIR /app

# Copy configuration files
COPY docker-compose.yml .
COPY wait-for-ollama.sh .

# Make scripts executable
RUN chmod +x wait-for-ollama.sh

# Expose ports
EXPOSE 5678 11434

# Start services
CMD ["docker-compose", "up", "--build", "--remove-orphans"]