#!/bin/sh
# 作成者:-
# 作成日:2019/4/1

cd ~/TERMINAL-LOG/sh

# 機能:
# 1.ターミナルの標準出力ロギング

# 変数設定(動的)
. ./setenv
logFileName="${logDirectory}/"`date +%Y%m%d%H%M%S`"_term.log"

# 任意機能、削除処理(60日以前に更新されたファイルは削除)
# find ./ -name "*_term.log" -mtime +60 -exec rm {} \;

# メイン処理
cd ~
echo "This terminal is logging! now."
script -a ${logFileName}
