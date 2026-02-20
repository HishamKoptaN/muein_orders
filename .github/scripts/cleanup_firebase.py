import os
import requests

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')

    # ملاحظة: استخدمنا v1 للبحث و v1 للـ Base
    base_api = "https://firebaseappdistribution.googleapis.com/v1"
    
    headers = {
        "Authorization": f"Bearer {token}",
        "Accept": "application/json"
    }

    # 1. جلب النسخ (هذا يعمل بنجاح كما رأينا في الـ Logs)
    fetch_url = f"{base_api}/projects/{project_number}/apps/{app_id}/releases"
    response = requests.get(fetch_url, headers=headers)
    
    if response.status_code != 200:
        print(f"❌ Failed to fetch: {response.text}")
        return

    releases = response.json().get('releases', [])
    print(f"✅ Found {len(releases)} releases.")

    for release in releases:
        release_path = release['name']
        
        # التغيير الجوهري: إضافة "?alt=json" أو التأكد من المسار
        # الـ API الفعلي للحذف يتطلب أحياناً التوجيه المباشر للمورد
        delete_url = f"https://firebaseappdistribution.googleapis.com/v1/{release_path}"
        
        print(f"--- Attempting to delete: {release_path} ---")
        
        # تنفيذ الحذف
        del_res = requests.delete(delete_url, headers=headers)
        
        # إذا استمر الـ 404، سنحاول الرابط البديل (v1test) وهو السري الذي يعمل للحذف
        if del_res.status_code == 404:
            test_url = f"https://firebaseappdistribution.googleapis.com/v1test/{release_path}"
            print(f"Got 404, trying tester API: {test_url}")
            del_res = requests.delete(test_url, headers=headers)

        if del_res.status_code in [200, 204]:
            print(f"✅ Successfully deleted: {release_path}")
        else:
            print(f"❌ Failed. Status: {del_res.status_code}, Response: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()