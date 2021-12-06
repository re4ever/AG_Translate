@echo off

del /S /Q Result\Resources
dir/b .\Resources > FullUIFiles.txt

.\bin\ArteryGearTranslator.exe UI FullUIFiles.txt ..\UISheet.csv

del /Q ..\Resources\*.*
copy .\Result\Resources\*.* ..\Resources\*.*

dir/b ..\Resources > ..\UIFiles.txt