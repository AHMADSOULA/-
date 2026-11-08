تشغيل البوت على Railway

1) ارفع محتويات هذا المجلد إلى GitHub repository.
2) من Railway اختر New Project ثم Deploy from GitHub Repo.
3) اختر المستودع. Railway سيكتشف Dockerfile ويبني الحاوية.
4) افتح Variables في خدمة Railway وأضف:
   API_ID       = Telegram API ID (رقم)
   API_HASH     = Telegram API Hash
   BOT_TOKEN    = Telegram Bot Token
5) ابدأ النشر. أمر التشغيل موجود في Dockerfile ولا تحتاج Start Command إضافياً.

ملاحظات:
- لا ترفع API_HASH أو BOT_TOKEN إلى GitHub.
- ملف setup.sh الأصلي غير مطلوب على Railway؛ Dockerfile يثبت المتطلبات.
- المتصفح مضبوط على Headless Chromium.
- مجلد Railway قد يكون مؤقتاً؛ هذا المشروع لا يعتمد على حفظ جلسة Telegram
  على القرص لأنه يستخدم bot token، لكن ملفات المتصفح المؤقتة تُحذف بعد كل مهمة.
- تسجيل الدخول إلى Google Cloud عبر Playwright قد يتوقف بسبب التحقق الأمني
  أو سياسات Google تجاه تسجيل الدخول الآلي. نجاح بناء الحاوية لا يضمن نجاح
  تسجيل الدخول أو تنفيذ خطوات Cloud Run.
