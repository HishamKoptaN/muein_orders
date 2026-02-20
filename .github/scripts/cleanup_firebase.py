import os
import requests

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')

    # الرابط لجلب النسخ - نستخدم v1alpha بدلاً من v1
    url = f"https://firebaseappdistribution.googleapis.com/v1alpha/projects/{project_number}/apps/{app_id}/releases"
    headers = {"Authorization": f"Bearer {token}"}

    print(f"Fetching releases from: {url}")
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        print(f"Failed to fetch releases: {response.status_code} - {response.text}")
        return

    releases = response.json().get('releases', [])
    print(f"Found {len(releases)} releases to delete.")

    for release in releases:
        # طباعة بيانات الـ release للتأكد
        print(f"Release data: {release}")
        
        # استخراج الـ release ID من الـ name
        release_name = release['name']
        release_id = release_name.split('/')[-1]
        
        # استخدام v1alpha للحذف أيضاً
        del_url = f"https://firebaseappdistribution.googleapis.com/v1alpha/projects/{project_number}/apps/{app_id}/releases/{release_id}"
        
        print(f"Attempting to delete: {del_url}")
        del_res = requests.delete(del_url, headers=headers)
        
        if del_res.status_code == 200:
            print(f"Successfully deleted: {release_id}")
        else:
            print(f"Failed to delete. URL: {del_url}")
            print(f"Status: {del_res.status_code}, Response: {del_res.text}")
            
            # تجريقة بديلة: استخدام الـ name مباشرة
            alt_del_url = f"https://firebaseappdistribution.googleapis.com/v1alpha/{release_name}"
            print(f"Trying alternative URL: {alt_del_url}")
            alt_res = requests.delete(alt_del_url, headers=headers)
            
            if alt_res.status_code == 200:
                print(f"Successfully deleted with alternative method: {release_id}")
            else:
                print(f"Alternative method also failed. Status: {alt_res.status_code}")

if __name__ == "__main__":
    delete_all_releases()