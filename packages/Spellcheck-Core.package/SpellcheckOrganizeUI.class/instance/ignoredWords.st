as yet unclassified
ignoredWords
 	^SpellChecker instance addedWords asOrderedCollection 
		sort: [:a :b | (a asLowercase) < (b asLowercase)].