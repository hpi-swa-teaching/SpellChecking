as yet unclassified
updateDictionaryAfter: index By: offset

	| newAssociations |
	
	newAssociations := self wrongWords associations collect: [:a | 
		a key >= index 
			ifTrue: [(a key+offset) -> (a value+offset)]
			ifFalse: [a]].
	self wrongWords: (IdentityDictionary newFrom: newAssociations)