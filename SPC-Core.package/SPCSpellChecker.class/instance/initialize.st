initialize-release
initialize 

	self hunspell: SPCHunspellAPI new;
		parser: SPCTextParser new;
		initializeAddedWords 