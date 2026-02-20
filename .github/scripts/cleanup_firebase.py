import os
import requests

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')

    url = f"https://firebaseappdistribution.googleapis.com/v1/projects/{project_number}/apps/{app_id}/releases"
    headers = {"Authorization": f"Bearer {token}"}

    # 1. جلب كل النسخ الموجودة حالياً
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch releases: {response.text}")
        return

    releases = response.json().get('releases', [])
    print(f"Found {len(releases)} releases to delete.")

    # 2. حذف كل نسخة على حدة
    for release in releases:
        release_name = release['name']
        del_url = f"https://firebaseappdistribution.googleapis.com/v1/{release_name}"
        del_res = requests.delete(del_url, headers=headers)
        
        if del_res.status_code == 200:
            print(f"Deleted: {release_name}")
        else:
            print(f"Failed to delete {release_name}: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()