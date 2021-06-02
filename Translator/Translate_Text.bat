@echo off

del /S /Q Result\Data
dir/b .\Data > FullTextFiles.txt

.\bin\ArteryGearTranslator.exe Make
.\bin\ArteryGearTranslator.exe I18n FileData.txt ..\TextSheet.csv ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Char FileData.txt ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Plot FileData.txt ..\PlotSheet.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt