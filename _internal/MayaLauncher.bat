@echo off
rem ----------------------------
rem MayaLauncher.bat
rem スクリプトパス・Pythonモジュール・プロジェクトフォルダを指定して Maya 起動
rem ----------------------------

rem Mayaスクリプトフォルダ
set "MAYA_SCRIPT_PATH=E:\Python\USD\src\USDExporter;%MAYA_SCRIPT_PATH%"

rem Pythonモジュール検索パス
set "PYTHONPATH=E:\Python\USD\src;%PYTHONPATH%"

rem プロジェクトフォルダ
set "MAYA_PROJECT=E:\Maya\USD_export"

rem Maya起動
"C:\Program Files\Autodesk\Maya2025\bin\maya.exe" -proj "%MAYA_PROJECT%" %*
