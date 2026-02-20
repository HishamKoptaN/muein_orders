import os
import requests

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')

    # الدومين الرئيسي والنسخة المستقرة
    base_api = "https://firebaseappdistribution.googleapis.com/v1"
    
    # رابط جلب النسخ (GET)
    # ملاحظة: تأكد أن app_id مخزن في السيكريت بشكل كامل (مثل 1:448994699498:android:xxxx)
    fetch_url = f"{base_api}/projects/{project_number}/apps/{app_id}/releases"
    
    headers = {
        "Authorization": f"Bearer {token}",
        "Accept": "application/json"
    }

    print(f"--- Step 1: Fetching releases from v1 API ---")
    response = requests.get(fetch_url, headers=headers)
    
    if response.status_code != 200:
        print(f"❌ Failed to fetch: {response.status_code}")
        print(f"Response: {response.text}")
        return

    releases = response.json().get('releases', [])
    print(f"✅ Found {len(releases)} releases.")

    for release in releases:
        # جوجل تعيد الحقل 'name' كمسار كامل يبدأ بـ projects/...
        # هذا هو المسار الذي تحتاجه عملية الـ DELETE بالضبط
        release_full_path = release['name']
        
        # بناء رابط الحذف الصحيح
        delete_url = f"{base_api}/{release_full_path}"
        
        print(f"--- Step 2: Deleting release: {release_full_path} ---")
        del_res = requests.delete(delete_url, headers=headers)
        
        if del_res.status_code in [200, 204]:
            print(f"✅ Successfully deleted.")
        else:
            print(f"❌ Delete failed. Status: {del_res.status_code}")
            print(f"URL tried: {delete_url}")
            print(f"Error: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()