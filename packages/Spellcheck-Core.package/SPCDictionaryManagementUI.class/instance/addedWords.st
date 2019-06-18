ignored words
addedWords

 	^ self spellchecker addedWords asOrderedCollection 
		sort: [:a :b | a asLowercase < b asLowercase]