# 🤖 n8n + Ollama AI Template for Railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/n8n-ollama)

> **Complete workflow automation platform with local AI capabilities**

Deploy n8n workflow automation with local AI models (Ollama) in one click! Perfect for building AI chatbots, automated workflows, and smart assistants without external API dependencies.

## ✨ What's Included

- 🔄 **n8n**: Visual workflow automation platform
- 🧠 **Ollama**: Local AI models (no API keys required!)
- 🚀 **Pre-configured**: Ready for AI chatbots and automation
- 🔒 **Privacy-focused**: All AI processing happens locally
- 💰 **Cost-effective**: No per-request AI API charges

## 🎯 Pre-installed AI Models

- **Gemma2:2b** (1.6GB) - Fast, lightweight model
- **Qwen2.5:3b** (2.3GB) - Excellent for Thai/multilingual support

## 🚀 Quick Start

1. **Click "Deploy to Railway"** button above
2. **Wait 10-15 minutes** for AI models to download
3. **Access your n8n instance** at the provided Railway URL
4. **Login** with your generated credentials
5. **Start building** AI-powered workflows!

## 🔑 Default Configuration

| Setting | Value |
|---------|-------|
| n8n Username | `admin` |
| n8n Password | Auto-generated (check Railway env vars) |
| Ollama URL | `http://ollama:11434` |
| Available Models | `gemma2:2b`, `qwen2.5:3b` |

## 🛠️ Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `N8N_BASIC_AUTH_USER` | n8n admin username | `admin` |
| `N8N_BASIC_AUTH_PASSWORD` | n8n admin password | Auto-generated |
| `RAILWAY_PUBLIC_DOMAIN` | Your Railway domain | Auto-set |

## 🤖 Example Use Cases

### 💬 Facebook Messenger Bot
```
Webhook → Process Message → Ollama AI → Send Reply
```

### 📧 Smart Email Assistant  
```
Email Trigger → Extract Content → AI Summary → Auto Reply
```

### 🔍 Data Analysis Bot
```
Upload CSV → Process Data → AI Insights → Generate Report
```

## 📋 Sample Workflow: AI Chatbot

```javascript
// HTTP Request to Ollama
{
  "model": "gemma2:2b",
  "prompt": "คุณเป็นผู้ช่วยที่เป็นมิตร ตอบคำถาม: " + userMessage,
  "stream": false,
  "options": {
    "temperature": 0.7,
    "top_p": 0.9
  }
}
```

## 🔧 Available Ollama Models

You can add more models by modifying the docker-compose.yml:

```bash
# Popular models you can add:
ollama pull llama3.2:3b      # 2.0GB - Meta's latest
ollama pull mistral:7b       # 4.1GB - High performance
ollama pull codellama:7b     # 3.8GB - Code generation
ollama pull phi3:mini        # 2.3GB - Microsoft's efficient model
```

## 📚 Documentation Links

- [n8n Documentation](https://docs.n8n.io/)
- [Ollama Model Library](https://ollama.ai/library)
- [Railway Documentation](https://docs.railway.app/)

## 🐛 Troubleshooting

### Models not loading?
- Check Railway logs for download progress
- Models take 10-15 minutes to download initially
- Restart the service if stuck

### n8n not accessible?
- Ensure Railway domain is generated
- Check if deployment is complete
- Verify environment variables are set

### Ollama API not responding?
- Wait for healthcheck to pass
- Check if models finished downloading
- Restart Ollama service

## 🔄 Health Checks

The template includes built-in health checks:

- **n8n**: `GET /healthz`
- **Ollama**: `GET /api/tags`

## 📊 Resource Usage

| Service | RAM Usage | Storage |
|---------|-----------|---------|
| n8n | ~200MB | ~100MB |
| Ollama + Models | ~2-4GB | ~4GB |

## 🤝 Contributing

1. Fork this repository
2. Make your improvements
3. Submit a pull request

## 📄 License

MIT License - feel free to use for personal and commercial projects!

## 🆘 Support

- **Railway Issues**: Check Railway dashboard logs
- **n8n Questions**: [n8n Community](https://community.n8n.io/)
- **Ollama Help**: [Ollama GitHub](https://github.com/ollama/ollama)

---

**⭐ Star this repo** if it helped you build amazing AI workflows!