initialize-release
initialize 

	self hunspell: HunspellAPI new;
		parser: SpellingTextParser new;
		initializeAddedWords 