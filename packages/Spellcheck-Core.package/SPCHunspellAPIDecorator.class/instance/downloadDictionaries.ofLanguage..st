library installation
downloadDictionaries: aString ofLanguage: aLanguage

	| resourceDirectory |
	resourceDirectory := self class ressourceDirectory directoryNamed: 'dictionaries'.
	resourceDirectory createDirectory: aLanguage.
	resourceDirectory := resourceDirectory directoryNamed: aLanguage.
	self downloadFileTo: resourceDirectory fromURL: self class gitDictionaryURL, aLanguage, '/', aString, '.dic' toFileNamed: aString, '.dic' inBinary: false.
	self downloadFileTo: resourceDirectory fromURL: self class gitDictionaryURL, aLanguage, '/', aString, '.aff' toFileNamed: aString, '.aff' inBinary: false.
