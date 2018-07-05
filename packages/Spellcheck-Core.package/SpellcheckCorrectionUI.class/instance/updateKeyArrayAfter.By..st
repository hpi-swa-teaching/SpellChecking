as yet unclassified
updateKeyArrayAfter: index By: offset

	keyArray := keyArray collect: [:k | 
		k >= index 
			ifTrue: [k+offset]
			ifFalse: [k]]