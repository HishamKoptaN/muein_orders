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
        return
    releases = response.json().get('releases', [])
    if not releases:
        return
    release_names = [r['name'] for r in releases]
    batch_delete_url = f"{base_url}/projects/{project_number}/apps/{app_id}/releases:batchDelete"
    payload = {
        "names": release_names
    }
    del_res = requests.post(batch_delete_url, headers=headers, data=json.dumps(payload))
    if del_res.status_code == 200:
        pass
    else:
        pass
if __name__ == "__main__":
    delete_all_releases()