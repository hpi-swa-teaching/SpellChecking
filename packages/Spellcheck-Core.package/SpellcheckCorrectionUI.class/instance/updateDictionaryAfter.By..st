as yet unclassified
updateDictionaryAfter: index By: offset
	| oldAssociations newAssociations |
	oldAssociations := wrongWords associations.
	newAssociations := oldAssociations collect: [:a | 
		a key >= index 
			ifTrue: [(a key+offset) -> (a value+offset)]
			ifFalse: [a]].
	wrongWords := IdentityDictionary newFrom: newAssociations.