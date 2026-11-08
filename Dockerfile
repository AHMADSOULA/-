# استخدام صورة رسمية تحتوي على بايثون ومتصفحات Playwright جاهزة
FROM mcr.microsoft.com/playwright/python:v1.40.0-jammy

# تعيين مجلد العمل
WORKDIR /app

# نسخ ملفات المشروع
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# تشغيل البوت
CMD ["python", "GC.py"]
