#!/bin/sh
echo "環境設定ファイル(bash_profile)をバックアップします。よろしいですか。"
read -p "よろしければ[Enter]を。中止は[control+c]を押して下さい"

. ./setenv
cp -p ${homeDirectory}"/.bash_profile" ${homeDirectory}"/.bash_profile.bak"

# 二重書き込み防止
grep term_logging.sh ${homeDirectory}"/.bash_profile"
if [ $? -eq 0 ]; then
  echo "管理者に連絡して下さい"
  exit
fi

sudo echo '/bin/sh '${program_id} >> ${homeDirectory}"/.bash_profile"
