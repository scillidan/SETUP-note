#!/bin/bash

HOME="~"

GOLDENDICT_CONFIG="$HOME/.config/goldendict"
GOLDENDICT_DATA="/usr/share/goldendict"
GOLDENDICT_SETUP="$HOME/Github/SETUP-note/goldendict"
GOLDENDICT_DL="$HOME/Source/goldendict_downloads"
GOLDENDICT_SRC="$HOME/Source/goldendict_sources"

rm -rf "$GOLDENDICT_CONFIG/extras"
rm -rf "$GOLDENDICT_CONFIG/icons"
rm -rf "$GOLDENDICT_CONFIG/fonts"
rm -rf "$GOLDENDICT_CONFIG/styles"

ln -s "$GOLDENDICT_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/extras" "$GOLDENDICT_DATA/extras"
ln -s "$GOLDENDICT_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/icons" "$GOLDENDICT_DATA/icons"
ln -s "$GOLDENDICT_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/fonts" "$GOLDENDICT_CONFIG/fonts"
mkdir -p "$GOLDENDICT_CONFIG/styles/Dark"
cat "$GOLDENDICT_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/article-style.css" "$GOLDENDICT_SETUP/article-style_user.css" > "$GOLDENDICT_CONFIG/styles/Dark/article-style.css"
ln -s "$GOLDENDICT_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/qt-style.css" "$GOLDENDICT_CONFIG/styles/Dark/qt-style.css"

read -p "Press Enter to continue..."