system startup
startUp: resuming
	resuming ifTrue: [
		self instance dictionaryPath: nil;
		affixPath: nil;
		reloadHunspellHandle;
		reloadAddedWords].
	^ super startUp: resuming