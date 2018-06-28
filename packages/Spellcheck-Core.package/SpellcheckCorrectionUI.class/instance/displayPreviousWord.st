buttons
displayPreviousWord
	
	keyArray ifNotEmpty: [
		keyArray addFirst: keyArray removeLast.
		self displayCurrentWrongWord]