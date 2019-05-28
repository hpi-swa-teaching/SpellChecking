spellchecking
addDictionary: aDictionaryPath of: aName


	(FileDirectory default directoryNamed: 'dictionaries') createDirectory: aName.
	FileDirectory new copyFileNamed: aDictionaryPath toFileNamed: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, aName, FileDirectory slash, aDictionaryPath asDirectoryEntry name) name.
		self	addDictionary: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, aName, FileDirectory slash, aDictionaryPath asDirectoryEntry name) name