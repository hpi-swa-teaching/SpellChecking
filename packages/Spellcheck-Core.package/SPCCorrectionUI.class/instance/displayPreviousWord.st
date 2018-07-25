buttons
displayPreviousWord
	
	self keyArray ifNotEmpty: [
		self keyArray addFirst: self keyArray removeLast.
		self displayCurrentWrongWord]