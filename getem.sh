#!/usr/bin/env bash

for f in ".zshrc"\
         ".todo.cfg"\
         ".timewarrior/timewarrior.cfg"\
         ".p10k.zsh"; do
  cp "$HOME/$f" .
done