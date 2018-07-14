initialize-release
initialize 

	self hunspell: HunspellAPI new.
	self parser: SpellingTextParser new.
	self addedWords ifNil: [self addedWords: Set new].
	self reloadAddedWords