import os
import requests

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')

    # الرابط لجلب النسخ
    url = f"https://firebaseappdistribution.googleapis.com/v1/projects/{project_number}/apps/{app_id}/releases"
    headers = {"Authorization": f"Bearer {token}"}

    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch releases: {response.text}")
        return

    releases = response.json().get('releases', [])
    print(f"Found {len(releases)} releases to delete.")

    for release in releases:
        # التعديل هنا: release['name'] يحتوي بالفعل على "projects/xxx/apps/xxx/releases/xxx"
        # لذا نضيف فقط الدومين الرئيسي في البداية
        release_name = release['name']
        del_url = f"https://firebaseappdistribution.googleapis.com/v1/{release_name}"
        
        # ملاحظة: إذا كان الـ release_name يبدأ بكلمة projects، الرابط الصحيح هو:
        full_del_url = f"https://firebaseappdistribution.googleapis.com/v1/{release_name}"
        
        del_res = requests.delete(full_del_url, headers=headers)
        
        if del_res.status_code == 200:
            print(f"Successfully deleted: {release_name}")
        else:
            # مطبوعة للتأكد من الرابط في حال الفشل
            print(f"Failed to delete. URL: {full_del_url}")
            print(f"Status: {del_res.status_code}, Response: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()