#!/bin/bash


# デフォルトユーザー名
USER=fedora
# 任意のパスワード 設定
PASSWORD=Password1234


# gnome Install
sudo dnf group install "Basic Desktop" GNOME -y

# EPEL Repository 有効化
sudo dnf install epel-release -y

# xrdp Install
sudo dnf install xrdp -y

# xrdp 自動起動
sudo systemctl enable xrdp --now

# 日本語パック Install
sudo dnf install langpacks-ja -y

# GNOME Tweaks Tool Install
sudo dnf install gnome-tweak-tool -y

# DNF Update
sudo dnf update -y

# 日本語設定
sudo localectl set-locale LANG=ja_JP.UTF-8
sudo localectl set-keymap jp

# ユーザーパスワード変更
echo ${PASSWORD} | sudo passwd --stdin ${USER}
