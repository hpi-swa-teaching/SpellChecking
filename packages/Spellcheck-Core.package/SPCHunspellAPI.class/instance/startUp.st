initialize-release
startUp
	
	(FileDirectory default directoryNamed: 'dictionaries') directoryEntries do: [ :entry |
			 (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, entry name) fileEntries  do: [ :file |
				(file name asLowercase includesSubString: '.dic') ifTrue: [
					self addDictionary: (FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, entry name, FileDirectory slash, file name) pathName.
				].
			].
		].