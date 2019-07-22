accessing
printOn: aStream

	aStream nextPutAll: 'A SPCHunspellLanguage for language named: ', self languageName, ' with affix path: ', self affixPath, ' and dictionary path ', self dictionaryPath