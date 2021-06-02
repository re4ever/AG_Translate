@echo off

del /S /Q Result\Data
dir/b .\Data > FullTextFiles.txt

.\bin\ArteryGearTranslator.exe I18n FullTextFiles.txt ..\TextSheet.csv ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Char FullTextFiles.txt ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Plot FullTextFiles.txt ..\PlotSheet.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt