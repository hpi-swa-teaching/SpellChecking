library installation
initializeCustomDictionary

	| aStream resourceDir |
	resourceDir := self class ressourceDirectory directoryNamed: 'dictionaries'.
	(resourceDir directoryExists: 'custom') ifFalse: [
		resourceDir createDirectory: 'custom'.
		resourceDir := resourceDir directoryNamed: 'custom'.
		resourceDir newFileNamed: 'cu_CU.aff'.
		aStream := FileStream fileNamed: SPCSpellChecker defaultCustomDictionaryPath.
		aStream nextPutAll: '0'.
		aStream lf.
		aStream close
	]
