import subprocess

def create_pull_request_for_test(project_path, base_branch="dev", head_branch="test"):
    """
    يقوم برفع فرع test (إذا لم يُرفع) وإنشاء طلب سحب (PR) منه إلى فرع dev
    """
    print(f"1. رفع الفرع '{head_branch}' إلى GitHub...")
    push_cmd = ["git", "push", "-u", "origin", head_branch]
    push_result = subprocess.run(push_cmd, cwd=project_path, capture_output=True, text=True)
    
    if push_result.returncode != 0 and "Everything up-to-date" not in push_result.stdout:
        print(f"⚠️ تنبيه أثناء الرفع: {push_result.stderr.strip()}")

    print(f"2. إنشاء طلب السحب من '{head_branch}' إلى '{base_branch}'...")
    pr_title = f"Refactor: دمج تحديثات فرع {head_branch} إلى {base_branch}"
    pr_body = f"Automated PR created for branch {head_branch} targeting {base_branch}."
    
    pr_cmd = [
        "gh", "pr", "create",
        "--title", pr_title,
        "--body", pr_body,
        "--base", base_branch,
        "--head", head_branch
    ]
    
    try:
        # تنفيذ الأمر داخل مسار المشروع
        result = subprocess.run(pr_cmd, cwd=project_path, capture_output=True, text=True, check=True)
        print(f"✅ تم إنشاء طلب السحب (PR) بنجاح:\n{result.stdout.strip()}")
        return True
        
    except subprocess.CalledProcessError as e:
        stderr_msg = e.stderr.strip()
        # التعامل الذكي إذا كان الـ PR موجوداً مسبقاً
        if "already exists" in stderr_msg or "exit status 4" in stderr_msg:
            print(f"ℹ️ طلب السحب للفرع '{head_branch}' موجود مسبقاً على GitHub بالفعل.")
        else:
            print(f"⚠️ فشل إنشاء طلب السحب:\n{stderr_msg}")
        return False

if __name__ == "__main__":
    # ضع مسار مشروعك هنا
    project_path = "/home/code/coding/flutter projects/muein_orders"
    create_pull_request_for_test(project_path)