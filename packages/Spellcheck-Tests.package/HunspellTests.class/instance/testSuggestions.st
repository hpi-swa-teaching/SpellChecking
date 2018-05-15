testing
testSuggestions

	| suggestions |
	suggestions := hunspell getSuggestions: 'laptpo'.
	self assert: 1 <= suggestions size.
	self assert: (suggestions includes: 'laptop')