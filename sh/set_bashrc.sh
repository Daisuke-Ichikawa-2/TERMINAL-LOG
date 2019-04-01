#!/bin/sh
echo "環境設定ファイル(bash-rc)をバックアップします。よろしいですか。"
read -p "よろしければ[Enter]を。中止は[control+c]を押して下さい"

. ./setenv
cp -p ${homeDirectory}"/.bashrc" ${homeDirectory}"/.bashrc.bak"
sudo cp -p ${execDirectory}"/term.conf" ${homeDirectory}"/.bashrc"
