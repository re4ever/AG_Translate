@echo off

del /S /Q Result
mkdir Result
mkdir Result\Data
mkdir Result\Resources

dir/b .\Data > loader
dir/b .\Resources > resourcesLoader

.\bin\CollectString.exe loader resourcesLoader ArteryGearCN2KOR.csv

copy .\Font\ui_font_zh_content .\Result\Resources\ui_font_zh_content
copy .\Font\ui_font_zh_title .\Result\Resources\ui_font_zh_title