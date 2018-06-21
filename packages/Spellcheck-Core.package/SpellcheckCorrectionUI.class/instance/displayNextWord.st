buttons
displayNextWord
	
	keyArray isEmpty ifFalse: [
	keyArray addLast: keyArray removeFirst.
	self displayCurrentWrongWord]