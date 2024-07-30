# Refer to https://deeplx.owo.network/integration/python.html
# Write by GPT-4 🧙, scillidan 🤡, See
# https://sharegpt.com/c/h7BytpU
# Can't translate English

# How to use
# pip install httpx langid
# python deeplx_translate.py <Input> <MotherLanguage>

import httpx
import json
import argparse
import langid

def debug(message):
    """Print debug messages if debug mode is enabled."""
    if args.debug:
        print(f"[DEBUG] {message}")

# Mapping of language codes to their corresponding DeepL API codes
LANGUAGE_CODES = {
    "en": "EN",  # English
    "zh": "ZH",  # Chinese
    "fr": "FR",  # French
    "de": "DE",  # German
    "es": "ES",  # Spanish
    # Add more languages as needed
}

def detect_language(text):
    """Detect the language of the given text using langid."""
    lang, _ = langid.classify(text)
    debug(f"Detected language: {lang}")
    return lang

def validate_language(lang):
    """Validate and return the language code or raise an error."""
    if lang in LANGUAGE_CODES:
        return LANGUAGE_CODES[lang]
    else:
        raise ValueError(f"Invalid target language: {lang}. Please use a valid language name.")

def translate(text, target_lang):
    deeplx_api = "http://172.24.212.63:1188/translate"
    
    # Detect source language
    source_lang = detect_language(text)
    debug(f"Source Language: {source_lang}, Target Language: {target_lang}")
    
    # Validate and get the target language code
    try:
        target_lang_code = validate_language(target_lang)
    except ValueError as e:
        return str(e)

    data = {
        "text": text,
        "source_lang": source_lang.upper(),  # Convert to uppercase for API
        "target_lang": target_lang_code
    }
    
    post_data = json.dumps(data)
    debug(f"Post Data: {post_data}")
    
    try:
        response = httpx.post(url=deeplx_api, data=post_data)
        debug(f"Response Status Code: {response.status_code}")
        response.raise_for_status()  # Raise an error for bad responses
        
        # Parse the JSON response
        response_data = response.json()
        return response_data.get("alternatives", ["No alternatives found."])
    except httpx.HTTPStatusError as e:
        return f"HTTP error occurred: {e.response.status_code} - {e.response.text}"
    except Exception as e:
        return f"An error occurred: {str(e)}"

def main():
    parser = argparse.ArgumentParser(description="Translate text using DeepL API.")
    parser.add_argument("input_text", type=str, help="Text to be translated")
    parser.add_argument("target_lang", type=str, help="Target language name (e.g., 'French', 'Chinese')")
    parser.add_argument("--debug", action="store_true", help="Enable debug output")

    global args
    args = parser.parse_args()

    # Translate the input text
    translated_text = translate(args.input_text, args.target_lang)

    # Output format
    print(args.input_text)
    if isinstance(translated_text, list):
        for alternative in translated_text:
            print(alternative)
    else:
        print(translated_text)

if __name__ == "__main__":
    main()