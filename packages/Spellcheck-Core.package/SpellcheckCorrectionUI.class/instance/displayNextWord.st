buttons
displayNextWord
	
	keyArray ifNotEmpty: [
		keyArray addLast: keyArray removeFirst.
		self displayCurrentWrongWord]