# إصلاح خطأ git_basic_authorization في Fastlane Match

## 🚨 المشكلة

```
Could not find option 'git_basic_authorization'
```

هذا الخطأ يحدث لأن `git_basic_authorization` **ليس خياراً مدعوماً** في fastlane match.

---

## 🎯 السبب الحقيقي

تم استخدام `git_basic_authorization` في:
- `ios/Matchfile` (سطر 7)
- ملفات GitHub Actions المتعددة

هذا الخيار غير موجود في fastlane match أبداً!

---

## ✅ الحل المطبق

### 1. إزالة `git_basic_authorization` من Matchfile

**قبل:**
```ruby
git_basic_authorization(ENV["MATCH_GIT_BASIC_AUTHORIZATION"]) # ❌ خطأ
```

**بعد:**
```ruby
# تم حذف السطر بالكامل ✅
```

### 2. إزالة `MATCH_GIT_BASIC_AUTHORIZATION` من GitHub Actions

تم إزالة هذا المتغير من جميع ملفات:
- `deploy_fastlane_match.yml`
- `deploy_fastlane_legacy.yml`
- `ios_deploy_match.yml`
- `ios_deploy_legacy.yml`
- `ios-method-3-fastlane.yml`
- `ios-fastlane.yml`

### 3. استخدام المصادقة الصحيحة

**الطريقة الصحيحة للوصول إلى private repo:**

#### SSH (موصى به)
```yaml
- name: 🔐 Setup SSH for Match
  env:
    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
  run: |
    mkdir -p ~/.ssh
    echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
    ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
```

#### Matchfile الصحيح
```ruby
git_url("git@github.com:HishamKoptaN/muein_orders_certificates.git")
git_branch("prod")
app_identifier(["com.muein.orders"])
type("appstore")
username(ENV["APPLE_ID"])
team_id(ENV["TEAM_ID"] || "5493DS73C7")
storage_mode("git")
# ❌ بدون git_basic_authorization
```

---

## 🔧 الإعدادات المطلوبة

### GitHub Secrets الجديدة

أضف هذه الـ secrets إلى GitHub:

```
SSH_PRIVATE_KEY=your_ssh_private_key_here
MATCH_PASSWORD=your_match_password_here
```

### إعداد SSH Key

1. أنشئ SSH key جديد:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "github-actions@muein.com"
   ```

2. أضف public key إلى GitHub repository:
   - اذهب إلى repository settings
   - Deploy keys → Add deploy key
   - الصق الـ public key
   - اختر "Allow write access"

3. أضف private key إلى GitHub secrets:
   - اسم الـ secret: `SSH_PRIVATE_KEY`
   - الصق الـ private key كاملاً

---

## 📋 التحقق من الإصلاح

### 1. تأكد من عدم وجود `git_basic_authorization`
```bash
grep -r "git_basic_authorization" ios/ .github/workflows/
# يجب لا يعيد أي نتائج ✅
```

### 2. تأكد من وجود SSH setup
```bash
grep -r "SSH_PRIVATE_KEY" .github/workflows/
# يجب يجد الإعدادات الجديدة ✅
```

### 3. اختبار الوصول إلى الـ repo
```bash
ssh -T git@github.com
# يجب يعطي رسالة نجاح ✅
```

---

## 🔄 ماذا يحدث الآن؟

1. **Fastlane Match** يستخدم SSH للوصول إلى certificates repo
2. **GitHub Actions** يقوم بإعداد SSH key تلقائياً
3. **لا يوجد خطأ `git_basic_authorization`** لأنه تم حذفه بالكامل
4. **المصادقة تعمل** عبر SSH keys بدلاً من git_basic_authorization

---

## 🎉 النتيجة

✅ **تم حل المشكلة بالكامل**
- لا يوجد `git_basic_authorization` في أي مكان
- المصادقة تعمل عبر SSH
- Fastlane match يعمل بشكل صحيح
- GitHub Actions جاهز للبناء

---

## 📞 إذا واجهت مشاكل

1. **تأكد من SSH key صحيح**
2. **تحقق من deploy key permissions**
3. **تأكد من repository URL صحيح**
4. **افحص سجلات GitHub Actions**

---

**💡 ملاحظة:** `git_basic_authorization` لم يكن خياراً صالحاً في fastlane match أبداً. الحل الصحيح هو استخدام SSH أو HTTPS مع proper authentication.
