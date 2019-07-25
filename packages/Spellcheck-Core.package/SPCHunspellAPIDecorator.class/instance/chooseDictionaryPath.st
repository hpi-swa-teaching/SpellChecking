dictionaries
chooseDictionaryPath
	
	| language chosenPath dictionaryPath affixPath|
	
	chosenPath := self selectFileFromFileChooserWithCaption: (self class selectFileMessage: self class dictionaryFileType).
	(self isFile: chosenPath ofCorrectType: self class dictionaryFileType) ifTrue: [
		dictionaryPath	:= chosenPath fullName.
		
		chosenPath := self getAffixPath: dictionaryPath.
		(self isFile: chosenPath ofCorrectType: self class affixFileType) ifTrue: [
			affixPath := chosenPath fullName.

			language := UIManager default request: 'Please enter the language your dictionary is made for'.
			language = '' ifTrue: [
				UIManager default inform: 'No name given. Process aborted.'.
			] ifFalse: [
				self importDictionary: dictionaryPath withAffix: affixPath of: language.
			]
		]
	]
