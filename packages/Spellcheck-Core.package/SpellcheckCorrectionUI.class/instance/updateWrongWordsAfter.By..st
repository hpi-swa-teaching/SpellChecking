as yet unclassified
updateWrongWordsAfter: index By: offset
	| oldAssociations newAssociations |
	"update dictionary"
	oldAssociations := wrongWords associations.
	newAssociations := oldAssociations collect: [:a | 
		a key >= index 
			ifTrue: [(a key+offset) -> (a value+offset)]
			ifFalse: [a]].
	wrongWords := IdentityDictionary newFrom: newAssociations.
	
	"update keyArray"
	keyArray := keyArray collect: [:k | 
		k >= index 
			ifTrue: [k+offset]
			ifFalse: [k]].