@echo off

dir/b .\Result\Resources > UIFiles.txt
del /S /Q Result\Resources

.\bin\ArteryGearTranslator.exe UI UIFiles.txt ..\UISheet.csv

del /Q ..\Resources\*.*
copy .\Result\Resources\*.* ..\Resources\*.*

dir/b ..\Resources > ..\UIFiles.txt