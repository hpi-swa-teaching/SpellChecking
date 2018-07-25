initialization
initializeParser: aString

	self 
		stringToParse: aString;
		loopCounter: 1;
		startOfCurrentWord: 1; 
		endOfCurrentWord: 1;
		parsedWords: Dictionary new