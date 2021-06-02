@echo off

dir/b .\Result\Data > TextFiles.txt
del /S /Q Result\Data

.\bin\ArteryGearTranslator.exe I18n TextFiles.txt ..\TextSheet.csv ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Char TextFiles.txt ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Plot TextFiles.txt ..\PlotSheet.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt