as yet unclassified
startUp: resuming

	resuming ifTrue: [
		self instance reloadHunspellHandle.
		self instance reloadAddedWords].
	^ super startUp: resuming