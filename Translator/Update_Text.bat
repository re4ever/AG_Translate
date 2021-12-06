@echo off

dir/b .\Result\Data > TextFiles.txt
del /S /Q Result\Data

.\bin\ArteryGearTranslator.exe Plot FileData.txt ..\PlotSheet.csv ..\PlotCharSheet.csv ..\PlotOptionSheet.csv
.\bin\ArteryGearTranslator.exe I18n FileData.txt ..\I18n.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt