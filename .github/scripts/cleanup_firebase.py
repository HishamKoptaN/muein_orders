import os
import requests
import json

def delete_all_releases():
    project_number = os.getenv('FIREBASE_PROJECT_NUMBER')
    app_id = os.getenv('FIREBASE_APP_ID')
    token = os.getenv('GOOGLE_ACCESS_TOKEN')
    base_url = "https://firebaseappdistribution.googleapis.com/v1"
    headers = {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json"
    }
    list_url = f"{base_url}/projects/{project_number}/apps/{app_id}/releases"
    response = requests.get(list_url, headers=headers)
    if response.status_code != 200:
        print(f"❌ Failed to fetch releases: {response.text}")
        return
    releases = response.json().get('releases', [])
    if not releases:
        print("✅ No releases found to delete.")
        return
    release_names = [r['name'] for r in releases]
    print(f"Found {len(release_names)} releases. Preparing batchDelete...")
    batch_delete_url = f"{base_url}/projects/{project_number}/apps/{app_id}/releases:batchDelete"
    payload = {
        "names": release_names
    }
    print(f"Sending batchDelete request to: {batch_delete_url}")
    del_res = requests.post(batch_delete_url, headers=headers, data=json.dumps(payload))
    if del_res.status_code == 200:
        print("✅ Successfully deleted all releases via batchDelete!")
    else:
        print(f"❌ Batch delete failed. Status: {del_res.status_code}")
        print(f"Response: {del_res.text}")

if __name__ == "__main__":
    delete_all_releases()