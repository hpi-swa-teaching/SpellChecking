initialize-release
initialize 

	self reloadHunspellHandle;
		parser: SPCTextParser new;
		initializeAddedWords.
	TheWorldMenu registerOpenCommand: { 'SpellCheck' . { (self class).#addDictionary } }