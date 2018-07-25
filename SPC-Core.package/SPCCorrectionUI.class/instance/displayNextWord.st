buttons
displayNextWord
	
	self keyArray ifNotEmpty: [
		self keyArray addLast: self keyArray removeFirst.
		self displayCurrentWrongWord]