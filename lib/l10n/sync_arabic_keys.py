import json
import os

def load_arb_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_arb_file(file_path, data):
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2, sort_keys=True)

def sync_with_arabic(l10n_dir):
    # Load Arabic file as reference
    ar_path = os.path.join(l10n_dir, 'app_ar.arb')
    ar_data = load_arb_file(ar_path)
    
    # Get all keys from Arabic file (except metadata)
    ar_keys = {k: v for k, v in ar_data.items() if not k.startswith('@@')}
    
    # Process each language file
    for filename in os.listdir(l10n_dir):
        if filename.startswith('app_') and filename.endswith('.arb') and filename != 'app_ar.arb':
            filepath = os.path.join(l10n_dir, filename)
            try:
                # Load existing translations
                data = load_arb_file(filepath)
                
                # Keep metadata and existing translations
                metadata = {k: v for k, v in data.items() if k.startswith('@@')}
                translations = {k: v for k, v in data.items() if not k.startswith('@@')}
                
                # Create new data with all Arabic keys
                new_data = {}
                new_data.update(metadata)  # Add metadata first
                
                # Add all Arabic keys, keeping existing translations where they exist
                for key, ar_value in ar_keys.items():
                    if key in translations:
                        new_data[key] = translations[key]
                    else:
                        new_data[key] = ""  # Empty string for missing translations
                
                # Save the synchronized file
                save_arb_file(filepath, new_data)
                print(f"Updated {filename} with {len(ar_keys)} keys from Arabic")
                
            except Exception as e:
                print(f"Error updating {filename}: {e}")

if __name__ == "__main__":
    l10n_dir = os.path.dirname(os.path.abspath(__file__))
    sync_with_arabic(l10n_dir)
