initialize-release
initializeAddedWords

	self addedWords ifNil: [self addedWords: Set new].
	self reloadAddedWords