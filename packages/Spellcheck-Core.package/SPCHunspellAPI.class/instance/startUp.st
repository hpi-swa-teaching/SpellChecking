initialize-release
startUp
	
	(FileDirectory default directoryNamed: 'dictionaries') directoryEntries do: [ :entry |
			(FileDirectory default directoryNamed: 'dictionaries', FileDirectory slash, entry name) directoryEntries do: [ :file |
				(file name asLowercase includesSubString: '.dic') ifTrue: [
					self addDictionary: (file pathName).
				].
			].
		].