initialize-release
chooseDictionaryPath
	
	| language chosenPath dictionaryPath affixPath|
	
	chosenPath := self selectFileFromFileChooserWithCaption: 'Please select a .dic file for your dictionary'.
	(self isFile: chosenPath ofCorrectType: '.dic') ifTrue: [
		dictionaryPath	:= chosenPath fullName.
			
		chosenPath := self selectFileFromFileChooserWithCaption: 'Please select a .aff file for your dictionary'.
		(self isFile: chosenPath ofCorrectType: '.aff') ifTrue: [
			affixPath := chosenPath fullName.
			language := UIManager default request: 'Please enter the language your dictionary is made for'.
			language = '' ifTrue: [
				UIManager default inform: 'No name given. Process aborted.'.
			] ifFalse: [
				self addDictionary: dictionaryPath withAffix: affixPath of: language.
			].
		].
	]
