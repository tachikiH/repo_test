#!/bin/bash
sudo apt-get update
sudo apt-get install locales language-pack-ja
sudo locale-gen ja_JP.EUC-JP
sudo apt-get update
sudo apt-get install language-pack-ko-base language-pack-ko
sudo locale-gen ko_KR.EUC-KR
sudo apt-get update
sudo apt-get install language-pack-bg-base language-pack-bg
sudo locale-gen bg_BG
