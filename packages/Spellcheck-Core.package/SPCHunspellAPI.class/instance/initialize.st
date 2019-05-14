initialize-release
initialize
	
	super initialize.
	TheWorldMenu registerOpenCommand: { 'SpellCheck'.{SPCHunspellAPI.#chooseDictionaryPath } }.
	self downloadLibraries;
		downloadDictionaries;
		createHandle