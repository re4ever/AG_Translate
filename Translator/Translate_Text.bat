@echo off

del /S /Q Result\Data
del /S /Q Result\DecryptData
dir/b .\Data > FullTextFiles.txt

.\bin\ArteryGearTranslator.exe Make FullTextFiles.txt FileData.txt
.\bin\ArteryGearTranslator.exe Plot FileData.txt ..\PlotSheet.csv ..\PlotCharSheet.csv ..\PlotOptionSheet.csv
.\bin\ArteryGearTranslator.exe I18n FileData.txt ..\I18n.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt