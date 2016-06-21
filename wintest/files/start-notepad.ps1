$source="C:\work\output\sales.csv"
#圧縮先のファイル名
$dist="C:\work\output\sales.zip"

## 7-Zipの場所を指定
# スクリプトファイルのパスを取得
$path=Split-Path ( & { $myInvocation.ScriptName } ) -parent
$7zip="C:\Program Files\7-Zip\7z.exe"
# 圧縮ファイルのフルパス取得
$source=$path+$source
$dist=$path+$dist

# 7-Zipのコマンドライン引数を生成
$Arg=" a -mem=AES256 -pPassword "+$dist+" "+$source

# 7-zipで圧縮
Start-Process $7zip -Verb runas -ArgumentList $Arg
