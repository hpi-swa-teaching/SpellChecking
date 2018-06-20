buttons
displayPreviousWord
	
	keyArray isEmpty ifFalse: [
	keyArray addFirst: keyArray removeLast.
	self displayCurrentWrongWord]