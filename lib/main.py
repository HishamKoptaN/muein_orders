import subprocess

def create_pull_request(project_path, branch_name, base_branch="dev"):
    """
    يقوم بإنشاء طلب سحب (Pull Request) أوتوماتيكياً من الفرع الحالي إلى فرع الأساس (dev)
    """
    pr_title = f"Refactor: تحسين الميزة للفرع {branch_name}"
    pr_body = "Automated Refactoring PR created by AI Agent."
    
    pr_cmd = [
        "gh", "pr", "create",
        "--title", pr_title,
        "--body", pr_body,
        "--base", base_branch,
        "--head", branch_name
    ]
    
    try:
        # تنفيذ الأمر داخل مسار المشروع
        result = subprocess.run(pr_cmd, cwd=project_path, capture_output=True, text=True, check=True)
        print(f"✅ تم إنشاء طلب السحب (PR) بنجاح:\n{result.stdout.strip()}")
        return True
        
    except subprocess.CalledProcessError as e:
        stderr_msg = e.stderr.strip()
        # التعامل الذكي إذا كان الـ PR موجوداً مسبقاً لتجنب توقف السكريبت
        if "already exists" in stderr_msg or "exit status 4" in stderr_msg:
            print(f"ℹ️ طلب السحب للفرع '{branch_name}' موجود مسبقاً على GitHub.")
        else:
            print(f"⚠️ فشل إنشاء طلب السحب:\n{stderr_msg}")
        return False