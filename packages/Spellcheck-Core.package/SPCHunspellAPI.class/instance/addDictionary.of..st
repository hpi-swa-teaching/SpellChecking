spellchecking
addDictionary: aDictionaryPath of: aName

	self	addDictionary: aDictionaryPath.
	(FileDirectory default directoryNamed: 'dictionaries') createDirectory: aName.
	FileDirectory new copyFileNamed: aDictionaryPath toFileNamed: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, aName, FileDirectory slash, aDictionaryPath asDirectoryEntry name) name