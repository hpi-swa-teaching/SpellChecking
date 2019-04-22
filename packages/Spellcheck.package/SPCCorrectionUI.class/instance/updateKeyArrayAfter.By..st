select alternative
updateKeyArrayAfter: index By: offset

	self keyArray: (self keyArray collect: [:k | 
		k >= index 
			ifTrue: [k + offset]
			ifFalse: [k]])