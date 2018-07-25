testing
testSuggestions

	| suggestions |
	
	suggestions := hunspell getSuggestions: wrongWord.
	self assert: 1 <= suggestions size.
	self assert: (suggestions includes: correctWord)