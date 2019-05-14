initialize-release
chooseDictionaryPath
	
	| dictionaryPath language |
		
	dictionaryPath := FileChooser new initializeAsDialogBox open fullName.
	language := UIManager default request: 'Please enter the language your dictionary is made for'.
	self addDictionary: dictionaryPath of: language.