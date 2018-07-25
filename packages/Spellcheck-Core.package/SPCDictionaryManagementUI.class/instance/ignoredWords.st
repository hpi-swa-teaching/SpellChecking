as yet unclassified
ignoredWords

 	^ SPCSpellChecker instance addedWords asOrderedCollection 
		sort: [:a :b | a asLowercase < b asLowercase]