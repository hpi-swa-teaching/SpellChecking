initialize-release
chooseDictionaryPath
	
	| dictionaryPath language chosenPath |
		
	chosenPath := FileChooser new initializeAsDialogBox open.
	chosenPath ifNil: [
		UIManager default inform: 'No dictionary selected. Process aborted.'.
	] ifNotNil: [
		dictionaryPath :=  chosenPath fullName.
		
		language := UIManager default request: 'Please enter the language your dictionary is made for'.
		language = '' ifTrue: [
			UIManager default inform: 'No name given. Process aborted.'.
		] ifFalse: [
			self addDictionary: dictionaryPath of: language.
		].
	].