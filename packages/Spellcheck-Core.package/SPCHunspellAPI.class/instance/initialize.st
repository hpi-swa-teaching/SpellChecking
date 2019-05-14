initialize-release
initialize
	
	super initialize.
	TheWorldMenu registerOpenCommand: { 'SpellCheck'.{self.#chooseDictionaryPath } }.
	self downloadLibraries;
		downloadDictionaries;
		createHandle