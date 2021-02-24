rem echo off

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
  ..\qpdf\bin\qpdf --password=%password% --decrypt %%F ..\output\%%F

  rem 【メモ】パスワード設定
  rem ..\qpdf\bin\qpdf --encrypt %password% %password% 40 -- %%F ..\output\%%F
)

cd ..

echo on

pause
