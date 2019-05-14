initialize-release
chooseDictionaryPath
	
	| dictionaryPath |
		
	dictionaryPath := FileChooser new initializeAsDialogBox open fullName.
	self addDictionary: dictionaryPath.