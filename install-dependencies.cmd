set gitrepo=%1
set squeakrepo=%2
set filename32=\libhunspellx32.dll
set filename64=\libhunspellx64.dll
set dicts=\build-support\dictionaries
set sourceHunspell32=%gitrepo%%filename32%
set sourceHunspell64=%gitrepo%%filename64%
set dictPath=%gitrepo%%dicts%
copy /B %sourceHunspell32% %squeakrepo%\Contents\Win32\
copy /B %sourceHunspell64% %squeakrepo%\Contents\Win32\
copy /B %sourceHunspell32% %squeakrepo%\Contents\Win64\
copy /B %sourceHunspell64% %squeakrepo%\Contents\Win64\
mkdir %squeakrepo%\Contents\Resources\dictionaries
xcopy /S %dictPath% %squeakrepo%\Contents\Resources\dictionaries