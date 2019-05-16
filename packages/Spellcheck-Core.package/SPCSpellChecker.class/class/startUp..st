system startup
startUp: resuming
	resuming ifTrue: [
		self instance reloadHunspellHandle.
		self instance reloadAddedWords].
	self instance hunspell startUp.
	^ super startUp: resuming