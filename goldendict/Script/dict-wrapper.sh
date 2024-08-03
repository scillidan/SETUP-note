#!/bin/bash

# Access dict protocol from the command line using curl
# and aspell via single interface

prog=${0##*/}

print_help() {
    echo "
    $prog [ -c [-l <language|dictionary>] -L -s -t ] \"<words|file>\" [\"<aspell options|curl options>\"]

    All we can do with words:
     - Spell check a file or words: needs aspell and local language dictionaries to be installed.
     - Lookup the meaning of words, default is to lookup English words in the gcide dictionary.
     - Translate words into another language. 
    Lookup and translate need curl to be installed
    Be aware spell check is done against local installed databases, to see them use \"-c -L\"
    Lookups and translate are done against DICT network databases, to see them use \"-L\" without \"-c\"

    options:
     -c Check spelling of \"<words>\" using aspell. Be aware quotes are needed to check multiple words.
     -L List local languages for aspell or network <dictionaries> for curl.
     -l <language|dictionary>
        The language or dictionary to use.
     -s Search the index of the \"english\" dictionary group or a specific dictionary using option -l <dictionary>
     -t Search for all translations of a word if no <dictionary> is added, in other
        words use dictionary group \"trans\". In stead you can use option -l <dictionary> to 
        translate the word against a dictionary or group of dictionaries. 
        If option -s is also present, search for the word. This will spit out a list of possible words

    examples:
    Passing a aspell option to a spell check of a html file:
        dict -c /path/to/measure_pu.html "--mode=html"
    Lookup meaning of a word:
        dict "dragonfly"
    Translate it using all \"trans\" dictionaries available:
        dict -t "dragonfly"
    Translate 2 dutch words to english:
        dict -l fd-nld-eng "voet knie"
    Lookup alike dutch words:
        dict -s -l fd-nld-eng "voet knie"
    "
}

dict() {
    lLang="$1"
    lWords="$2"
    lOpts="$3"
    lDict=""

    curl=$(which curl 2>/dev/null)
    [[ -z "$curl" ]] && echo "FATAL: curl wasn't found please install first" && exit 1

    redirect="/dev/null" 
    reduceCmd="grep -v -e '^250 ok' -e '^221 bye' -e '^220 dict\.dict\.org'"
    [[ -n "$lOpts" ]] && redirect="/dev/stdout" reduceCmd="cat" 
    if [[ $listDict -eq 1 ]]; then
        $curl dict://dict.org/"SHOW:DB" 2>$redirect | eval $reduceCmd 
    else
        lCmd="d"   
        [[ $search -eq 1 ]] && lCmd="m" 

        [[ -n "$lLang" ]] && lDict=":$lLang"
        
        for lWord in $lWords; do
            $curl $lOpts dict://dict.org/$lCmd:"$lWord""$lDict" 2>$redirect | eval $reduceCmd  
        done
    fi 
}

spell() {
    lLang="$1"
    lWords="$2"
    lOpts="$3"

    aspell=$(which aspell 2>/dev/null)
    [[ -z "$aspell" ]] && echo "FATAL: aspell wasn't found please install first" && exit 1
    
    [[ -n "$lLang" ]] && lOpts="$lOpts --lang $lLang"

    lCmd="echo"
    [[ -s "$lWords" ]] && lCmd="cat" 
    
    if [[ $listDict -eq 1 ]]; then
        $aspell dump dicts
    else
        $lCmd $lWords | eval $aspell -a $lOpts 
    fi
}

typeset -i debug=0 check=0 translate=0 search=0 listDict=0

while getopts "h\?DLcl:stv" s; do
    case $s in
        c) check=1 ;;
        D) debug=debug+1 ;;
        L) listDict=1 ;;
        l) dictionary=$OPTARG ;;
        s) search=1 ;;
        t) translate=1 ;;
        v) set -x ;;
        h|*) showHelp=1 ;;
    esac
done
shift $(($OPTIND - 1))
words="$1"
shift

[[ $showHelp -eq 1 ]] && print_help && exit

[[ -n "$DICT_DICTIONARY" && -z "$dictionary" ]] && dictionary="$DICT_DICTIONARY"
[[ -n "$DICT_DICTIONARY_TRANS" && $translate -eq 1 && -z "$dictionary" ]] && dictionary="$DICT_DICTIONARY_TRANS"
[[ -n "$DICT_DICTIONARY_CHECK" && $check -eq 1 && -z "$dictionary" ]] && dictionary="$DICT_DICTIONARY_CHECK"
[[ $translate -eq 1 && -z "$dictionary" ]] && dictionary="trans"
[[ $check -eq 0 && -z "$dictionary" ]] && dictionary="english"

if [[ $check -eq 1 ]]; then 
    spell "$dictionary" "$words" "$*" 
    exit $?
fi

dict "$dictionary" "$words" "$*"