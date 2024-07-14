#!/bin/bash

HOME="~"

MPV_CONFIG="$HOME/.config/mpv"
MPV_SETUP_NOTE="$HOME/Github\SETUP-note\mpv"
MPV_DL="$HOME/Source/mpv_downloads"
MPV_SRC="$HOME/Source/mpv_sources"

IND="input"
INCLD="include"
INCLOD="include-opts"
SD="scripts"
SOD="scripts-opts"
SMD="script-modules"
SSD="$MPV_SETUP_NOTE/$SD"
SSOD="$MPV_SETUP_NOTE/$SOD"

CONFIG_DIR_VIDEO="$MPV_SETUP_NOTE/_config_dir_video"
CONFIG_DIR_STREAM="$MPV_SETUP_NOTE/_config_dir_stream"
CONFIG_DIR_MUSIC="$MPV_SETUP_NOTE/_config_dir_music"
CONFIG_DIR_MANGA="$MPV_SETUP_NOTE/_config_dir_manga"
CONFIG_DIR_EDIT="$MPV_SETUP_NOTE/_config_dir_edit"

export DL MPV_SRC MPV_SETUP_NOTE IND INCLD INCLOD SD SOD SMD SSD SSOD CONFIG_DIR_VIDEO CONFIG_DIR_STREAM CONFIG_DIR_MUSIC CONFIG_DIR_MANGA CONFIG_DIR_EDIT MPV_CONFIG