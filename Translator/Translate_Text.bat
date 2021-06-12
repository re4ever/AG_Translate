@echo off

del /S /Q Result\Data
del /S /Q Result\DecryptData
dir/b .\Data > FullTextFiles.txt

.\bin\ArteryGearTranslator.exe Make FullTextFiles.txt FileData.txt
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