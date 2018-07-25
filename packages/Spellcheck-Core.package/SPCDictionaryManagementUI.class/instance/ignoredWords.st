ignored words
ignoredWords

 	^ self spellchecker addedWords asOrderedCollection 
		sort: [:a :b | a asLowercase < b asLowercase]