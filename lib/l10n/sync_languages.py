import json
import os

def load_arb_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_arb_file(file_path, data):
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2, sort_keys=True)

def get_all_keys(directory):
    all_keys = set()
    for filename in os.listdir(directory):
        if filename.startswith('app_') and filename.endswith('.arb'):
            try:
                data = load_arb_file(os.path.join(directory, filename))
                all_keys.update(key for key in data.keys() if not key.startswith('@@'))
            except Exception as e:
                print(f"Error processing {filename}: {e}")
    return sorted(all_keys)

def sync_language_files(directory):
    # Get all unique keys from all files
    all_keys = get_all_keys(directory)
    
    # Process each language file
    for filename in os.listdir(directory):
        if filename.startswith('app_') and filename.endswith('.arb'):
            filepath = os.path.join(directory, filename)
            try:
                # Load existing translations
                data = load_arb_file(filepath)
                
                # Create new data with all keys, preserving existing translations
                new_data = {}
                metadata = {k: v for k, v in data.items() if k.startswith('@@')}
                translations = {k: v for k, v in data.items() if not k.startswith('@@')}
                
                # Add metadata first
                new_data.update(metadata)
                
                # Add all keys with existing translations or empty strings
                for key in all_keys:
                    if key in translations:
                        new_data[key] = translations[key]
                    else:
                        new_data[key] = ""
                
                # Save the synchronized file
                save_arb_file(filepath, new_data)
                print(f"Updated {filename} with {len(all_keys)} keys")
                
            except Exception as e:
                print(f"Error updating {filename}: {e}")

if __name__ == "__main__":
    l10n_dir = os.path.dirname(os.path.abspath(__file__))
    sync_language_files(l10n_dir)
