@echo off

del /S /Q Result
mkdir Result
mkdir Result\Data
mkdir Result\Resources

dir/b .\Data > TextFiles.txt
dir/b .\Resources > UIFiles.txt
dir/b .\Font > FontFiles.txt

.\bin\CollectString.exe TextFiles.txt UIFiles.txt ArteryGearCN2KOR.csv

copy .\Font\ui_font_zh_content .\Result\Resources\ui_font_zh_content
copy .\Font\ui_font_zh_title .\Result\Resources\ui_font_zh_title