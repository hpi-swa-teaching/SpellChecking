displaying
dismissCurrentDisplayedWord

	self inputText ifNotEmpty: [
		self keyArray removeFirst. 
		self displayCurrentWrongWord]