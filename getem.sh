#!/usr/bin/env bash

for f in ".zshrc"\
         ".todo.cfg"\
         ".timewarrior/timewarrior.cfg"\
         "Library/Application Support/com.mitchellh.ghostty/config"\
         "Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"\
         "Library/Application Support/Sublime Text/Packages/User/ayu-mirage.sublime-color-scheme"\
         ".p10k.zsh"; do
  cp "$HOME/$f" .
done