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
        # استخراج الـ release ID من الـ name
        # release['name'] يكون بالشكل: "projects/xxx/apps/xxx/releases/xxx"
        release_name = release['name']
        release_id = release_name.split('/')[-1]  # استخراج الـ ID الأخير
        
        # بناء الرابط الصحيح للحذف
        del_url = f"https://firebaseappdistribution.googleapis.com/v1/projects/{project_number}/apps/{app_id}/releases/{release_id}"
        
        del_res = requests.delete(del_url, headers=headers)
        
        if del_res.status_code == 200:
            print(f"Successfully deleted: {release_id}")
        else:
            print(f"Failed to delete. URL: {del_url}")
            print(f"Status: {del_res.status_code}, Response: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()