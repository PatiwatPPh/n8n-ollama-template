# สร้าง GitHub Repository และอัพโหลดไฟล์

# 1. สร้าง directory ใหม่
mkdir n8n-ollama-template
cd n8n-ollama-template

# 2. Initialize git
git init

# 3. สร้างไฟล์ทั้งหมด (ดูในไฟล์แยกด้านล่าง)

# 4. Add และ commit ไฟล์
git add .
git commit -m "🚀 Initial n8n + Ollama AI template for Railway"

# 5. สร้าง repo ใน GitHub (ทำผ่าน web หรือ GitHub CLI)
# ถ้ามี GitHub CLI:
gh repo create n8n-ollama-template --public --description "Complete n8n + Ollama AI workflow template for Railway deployment"

# 6. เชื่อมต่อกับ remote repository
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/n8n-ollama-template.git

# 7. Push ขึ้น GitHub
git push -u origin main

# 8. สร้าง Release (optional)
gh release create v1.0.0 --title "🎉 First Release" --notes "Ready-to-deploy n8n + Ollama template"