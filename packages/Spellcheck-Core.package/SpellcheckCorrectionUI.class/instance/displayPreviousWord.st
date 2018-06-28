buttons
displayPreviousWord
	
	keyArray ifEmpty: [
		keyArray addFirst: keyArray removeLast.
		self displayCurrentWrongWord]