as yet unclassified
dismissCurrentDisplayedWord

	self inputText ifNotEmpty: [
		self keyArray removeFirst. 
		self displayCurrentWrongWord]