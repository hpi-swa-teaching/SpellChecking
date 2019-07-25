paths
dictionaryPath: aLanguageName

	^ (self selectedLanguageDirectoryPath: aLanguageName) pathName, FileDirectory slash,  (self dictionaryFileName: aLanguageName) 