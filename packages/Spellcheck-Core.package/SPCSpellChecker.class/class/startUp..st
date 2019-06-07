system startup
startUp: resuming
	resuming ifTrue: [
		self instance dictionaryPath: nil;
		affixPath: nil.
		self instance reloadHunspellHandle.
		self instance reloadAddedWords].
	
	^ super startUp: resuming