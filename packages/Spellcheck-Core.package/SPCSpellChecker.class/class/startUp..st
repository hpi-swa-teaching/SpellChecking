system startup
startUp: resuming
	Transcript showln: 'Resuming Hunspell'.
	resuming ifTrue: [
		self instance reloadHunspellHandle.
		self instance reloadAddedWords].
	^ super startUp: resuming