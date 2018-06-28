buttons
displayNextWord
	
	keyArray ifEmpty: [
		keyArray addLast: keyArray removeFirst.
		self displayCurrentWrongWord]