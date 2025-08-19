#!/bin/bash

echo "🔍 Checking Ollama availability..."

# รอให้ Ollama พร้อมใช้งาน
max_attempts=30
attempt=1

while [ $attempt -le $max_attempts ]; do
    if curl -s http://ollama:11434/api/tags > /dev/null 2>&1; then
        echo "✅ Ollama is ready!"
        
        # ตรวจสอบ models ที่มี
        echo "📋 Available models:"
        curl -s http://ollama:11434/api/tags | jq '.models[].name' 2>/dev/null || echo "Models are still loading..."
        
        exit 0
    else
        echo "⏳ Attempt $attempt/$max_attempts: Ollama not ready yet, waiting 10 seconds..."
        sleep 10
        attempt=$((attempt + 1))
    fi
done

echo "❌ Ollama failed to start after $max_attempts attempts"
exit 1