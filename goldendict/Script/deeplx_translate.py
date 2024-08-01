# Refer to https://deeplx.owo.network/integration/python.html
# Write by GPT-4 🧙, scillidan 🤡, See
# https://sharegpt.com/c/yFdikL1

# How to use

# pip install httpx langid
# python deeplx_translate.py <Input> <LanguageFirst> <LanguageSecond>

import httpx
import json
import langid
import argparse
import sys

def translate(text, source_lang, target_lang, debug=False):
    deeplx_api = "http://127.0.0.1:1188/translate"
    
    data = {
        "text": text,
        "source_lang": source_lang,
        "target_lang": target_lang
    }
    
    post_data = json.dumps(data)
    
    try:
        response = httpx.post(url=deeplx_api, data=post_data)
        response.raise_for_status()  # Raise an error for bad responses
        response_data = response.json()
        
        if debug:
            print(f"Debug Info:\nRequest Data: {data}\nResponse: {response_data}")
        
        return response_data
    
    except Exception as e:
        print(f"Error: {str(e)}")
        sys.exit(1)

def main():
    parser = argparse.ArgumentParser(description='Translate text between languages.')
    parser.add_argument('input', type=str, help='Text to translate')
    parser.add_argument('language_first', type=str, help='Target language for non-English input')
    parser.add_argument('language_second', type=str, help='Target language for English input')
    parser.add_argument('--debug', action='store_true', help='Show debug information')
    
    args = parser.parse_args()
    
    # Determine the language of the input text
    detected_lang, _ = langid.classify(args.input)
    
    if detected_lang == 'en':
        target_lang = args.language_second
    else:
        target_lang = args.language_first
    
    # Perform translation
    response_data = translate(args.input, detected_lang, target_lang, args.debug)
    
    # Output the result
    print(args.input)
    print(response_data.get("data", "No translation available"))
    
    alternatives = response_data.get("alternatives", [])
    for alt in alternatives:
        print(f"- {alt}")

if __name__ == '__main__':
    main()