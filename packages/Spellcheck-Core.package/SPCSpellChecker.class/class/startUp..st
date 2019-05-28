system startup
startUp: resuming
	resuming ifTrue: [
    self instance dictionaryPath: nil;
		  affixPath: nil;
		  reloadHunspellHandle;
		  reloadAddedWords].
	self instance hunspell startUp.
	
	(TheWorldMenu registeredOpenCommands includes: { 'SpellCheck' . { SPCSpellChecker.#addDictionary } }) ifFalse: [
		TheWorldMenu registerOpenCommand: { 'SpellCheck' . { SPCSpellChecker.#addDictionary } }.
	].
	^ super startUp: resuming