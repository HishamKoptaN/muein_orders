#!/usr/bin/env python3
"""
Auto-Fixer Bot for GitHub Actions
Analyzes build errors using Gemini API and applies fixes automatically.
"""

import os
import sys
import json
import re
import subprocess
from pathlib import Path
from typing import Optional, List, Dict
import google.generativeai as genai

# Configuration
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY")
MAX_RETRY_COMMITS = 3
RETRY_MARKER_FILE = ".github/.auto_fixer_retries"

# Files the bot is allowed to modify
ALLOWED_FILES = [
    ".github/workflows/*.yml",
    "ios/fastlane/Fastfile",
    "ios/Podfile",
    "ios/Runner/Info.plist",
    "pubspec.yaml",
]

# Patterns that indicate unfixable errors (require human intervention)
UNFIXABLE_PATTERNS = [
    r"Invalid API Key",
    r"authentication failed",
    r"password",
    r"secret.*not.*found",
    r"Missing.*secret",
    r"credentials.*invalid",
]


def get_retry_count() -> int:
    """Get current retry count for this workflow run."""
    marker_path = Path(RETRY_MARKER_FILE)
    if marker_path.exists():
        try:
            return int(marker_path.read_text().strip())
        except ValueError:
            return 0
    return 0


def increment_retry_count():
    """Increment retry count."""
    Path(RETRY_MARKER_FILE).parent.mkdir(parents=True, exist_ok=True)
    count = get_retry_count() + 1
    Path(RETRY_MARKER_FILE).write_text(str(count))
    return count


def reset_retry_count():
    """Reset retry count (call on successful build)."""
    Path(RETRY_MARKER_FILE).unlink(missing_ok=True)


def is_unfixable_error(error_log: str) -> bool:
    """Check if error requires human intervention (secrets/passwords)."""
    for pattern in UNFIXABLE_PATTERNS:
        if re.search(pattern, error_log, re.IGNORECASE):
            return True
    return False


def analyze_error_with_gemini(error_log: str) -> Optional[Dict]:
    """Send error log to Gemini and get fix suggestions."""
    if not GEMINI_API_KEY:
        print("⚠️ GEMINI_API_KEY not set, skipping AI analysis")
        return None

    genai.configure(api_key=GEMINI_API_KEY)
    model = genai.GenerativeModel('gemini-pro')

    prompt = f"""
You are a DevOps engineer analyzing a Flutter iOS build failure.

Error Log:
```
{error_log}
```

Analyze this error and suggest fixes. Return your response as a JSON object:
{{
    "error_type": "brief description of the error",
    "is_fixable": true/false,
    "files_to_modify": [
        {{
            "path": "relative/path/to/file",
            "reason": "why this file needs changes",
            "changes": "detailed description of what to change"
        }}
    ],
    "confidence": "high/medium/low"
}}

Only suggest fixes for:
- YAML syntax errors in workflows
- Fastlane configuration issues
- Podfile platform version issues
- Provisioning profile settings
- Build script errors

Do NOT suggest fixes for:
- Missing secrets/passwords
- Invalid API keys
- Authentication failures
"""

    try:
        response = model.generate_content(prompt)
        # Extract JSON from response
        text = response.text
        # Find JSON block if wrapped in markdown
        if "```json" in text:
            text = text.split("```json")[1].split("```")[0]
        elif "```" in text:
            text = text.split("```")[1].split("```")[0]
        
        return json.loads(text.strip())
    except Exception as e:
        print(f"❌ Failed to parse Gemini response: {e}")
        return None


def apply_fix(file_path: str, change_description: str) -> bool:
    """Apply a fix to a file based on description."""
    print(f"🔧 Attempting to fix: {file_path}")
    print(f"   Change: {change_description}")
    
    # TODO: Implement specific fix patterns
    # This is where you'd add regex-based fixes for common errors
    
    return False  # Placeholder - returns False to indicate manual review needed


def main():
    if len(sys.argv) < 2:
        print("Usage: auto_fixer.py <error_log>")
        sys.exit(1)

    error_log = sys.argv[1]
    
    # Check retry limit
    retry_count = get_retry_count()
    if retry_count >= MAX_RETRY_COMMITS:
        print(f"🛑 Maximum retry attempts ({MAX_RETRY_COMMITS}) reached. Stopping to prevent infinite loop.")
        print("   Human intervention required.")
        sys.exit(1)

    # Check if error is unfixable by AI
    if is_unfixable_error(error_log):
        print("🔒 Error requires human intervention (secrets/authentication issue).")
        print("   Skipping auto-fix.")
        sys.exit(1)

    print(f"🤖 Auto-Fixer analyzing error (attempt {retry_count + 1}/{MAX_RETRY_COMMITS})...")
    
    # Analyze with Gemini
    analysis = analyze_error_with_gemini(error_log)
    if not analysis:
        print("⚠️ Could not analyze error. Manual review required.")
        sys.exit(1)

    if not analysis.get("is_fixable", False):
        print(f"🤖 AI determined this error is not auto-fixable: {analysis.get('error_type')}")
        sys.exit(1)

    confidence = analysis.get("confidence", "low")
    if confidence == "low":
        print(f"⚠️ Low confidence in fix ({confidence}). Manual review recommended.")
        # Still attempt but warn

    print(f"🔍 Detected error: {analysis.get('error_type')}")
    print(f"📁 Files to modify: {len(analysis.get('files_to_modify', []))}")

    # Apply fixes
    fixes_applied = 0
    for file_info in analysis.get("files_to_modify", []):
        path = file_info.get("path")
        changes = file_info.get("changes")
        
        if apply_fix(path, changes):
            fixes_applied += 1

    if fixes_applied > 0:
        increment_retry_count()
        print(f"✅ Applied {fixes_applied} fixes. Next run will be attempt {retry_count + 2}.")
        sys.exit(0)  # Success - let GitHub Actions commit and push
    else:
        print("⚠️ Could not automatically apply fixes. Manual review required.")
        sys.exit(1)


if __name__ == "__main__":
    main()
