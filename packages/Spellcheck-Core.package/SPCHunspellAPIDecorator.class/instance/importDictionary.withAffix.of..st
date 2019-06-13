dictionaries
importDictionary: aDictionaryPath withAffix: anAffixPath of: aName


	(FileDirectory default directoryNamed: 'dictionaries') createDirectory: aName.
	FileDirectory new copyFileNamed: aDictionaryPath toFileNamed: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, aName, FileDirectory slash, aDictionaryPath asDirectoryEntry name) name.
	FileDirectory new copyFileNamed: anAffixPath toFileNamed: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, aName, FileDirectory slash, anAffixPath asDirectoryEntry name) name.
