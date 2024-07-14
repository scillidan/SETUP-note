#!/bin/bash

HOME="~"
SRC="~/Source"

GD_HOME="$HOME/.config/goldendict"
GD_DATA="/usr/share/goldendict"
GD_SETUP="$HOME/Github/SETUP-note/goldendict"
GD_SRC="$SRC/goldendict_sources"
GD_DL="$SRC/goldendict_downloads"

rm -rf "$GD_HOME/styles"
rm -rf "$GD_HOME/fonts"
rm -rf "$GD_HOME/icons"
rm -rf "$GD_HOME/extras"

mkdir -p "$GD_HOME/styles/Dark"
cat "$GD_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/article-style.css" "$GD_SETUP/article-style_mix.css" > "$GD_HOME/styles/Dark/article-style.css"
ln -s "$GD_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/styles/Dark/qt-style.css" "$GD_HOME/styles/Dark/qt-style.css"
ln -s "$GD_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/fonts" "$GD_HOME/fonts"
ln -s "$GD_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/icons" "$GD_DATA/icons"
ln -s "$GD_SRC/GoldenDict-Full-Dark-Theme/GoldenDict/extras" "$GD_DATA/extras"

read -p "Press Enter to continue..."