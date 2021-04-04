echo off

rem 開封時パスワード
set password="123456"

rem 入力元フォルダ
mkdir input
rem 出力先フォルダ
mkdir output

cd input

rem 【①】拡張子がpdfのファイルを全件ループ
for %%F in (*.pdf) do (

  rem 【②】パスワード解除
  ..\bin\pdftk "%%F" input_pw %password% output "..\output\%%F"

  rem 【メモ】パスワード設定
  rem ..\bin\pdftk "%%F" output pass%%F user_pw %password%
)

cd ..

echo on

pause
