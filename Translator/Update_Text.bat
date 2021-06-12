@echo off

dir/b .\Result\Data > TextFiles.txt
del /S /Q Result\Data

.\bin\ArteryGearTranslator.exe Char FileData.txt ..\CharSheet.csv
.\bin\ArteryGearTranslator.exe Plot FileData.txt ..\PlotSheet.csv
.\bin\ArteryGearTranslator.exe Load FileData.txt ..\LoadingSheet.csv
.\bin\ArteryGearTranslator.exe Target FileData.txt ..\TargetSheet.csv
.\bin\ArteryGearTranslator.exe CombatCond FileData.txt ..\CombatConditionSheet.csv
.\bin\ArteryGearTranslator.exe Voice FileData.txt ..\CharacterVoiceSheet.csv
.\bin\ArteryGearTranslator.exe I18n FileData.txt ..\TextSheet.csv ..\CharSheet.csv ..\TargetSheet.csv ..\CombatConditionSheet.csv ..\CharacterVoiceSheet.csv

del /Q ..\Data\*.*
copy .\Result\Data\*.* ..\Data\*.*

dir/b ..\Data > ..\TextFiles.txt