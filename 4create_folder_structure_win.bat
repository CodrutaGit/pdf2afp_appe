@ECHO OFF

Set dir=e:\Output_TestFiles\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir e:\Output_TestFiles\out_AFP\TestFiles\
echo mkdir e:\Output_TestFiles\out_AFP\TestFiles\

mkdir e:\Output_TestFiles\out_PDF\TestFiles\
echo mkdir e:\Output_TestFiles\out_PDF\TestFiles\

mkdir e:\Output_TestFiles\out_TIFF\TestFiles\
echo mkdir e:\Output_TestFiles\out_TIFF\TestFiles\


c:\Windows\System32\xcopy.exe /T  e:\TestFiles e:\Output_TestFiles\out_AFP\TestFiles
c:\Windows\System32\xcopy.exe  /T e:\TestFiles e:\Output_TestFiles\out_PDF\TestFiles
c:\Windows\System32\xcopy.exe /T  e:\TestFiles e:\Output_TestFiles\out_TIFF\TestFiles
