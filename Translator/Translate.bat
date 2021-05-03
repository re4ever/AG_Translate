@echo off

del /S /Q Result
mkdir Result
mkdir Result\Data
mkdir Result\Resources

dir/b .\Data > TextFiles.txt
dir/b .\Resources > UIFiles.txt
dir/b .\Font > FontFiles.txt

.\bin\CollectString.exe TextFiles.txt UIFiles.txt ..\ArteryGearCN2KOR.csv

del /Q ..\Data\*.*
del /Q ..\Font\*.*
del /Q ..\Resources\*.*
copy .\Result\Data\*.* ..\Data\*.*
copy .\Font\*.* ..\Font\*.*
copy .\Result\Resources\*.* ..\Resources\*.*

dir/b ..\Data > ..\TextFiles.txt
dir/b ..\Resources > ..\UIFiles.txt
dir/b ..\Font > ..\FontFiles.txt