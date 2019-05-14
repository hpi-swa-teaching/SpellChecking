initialize-release
initialize
	
	super initialize.
	TheWorldMenu registerOpenCommand: { 'SpellCheck' . { self.#chooseDictionaryPath } }.
	Smalltalk addToStartUpList: self.
	self downloadLibraries;
		downloadDictionaries;
		createHandle