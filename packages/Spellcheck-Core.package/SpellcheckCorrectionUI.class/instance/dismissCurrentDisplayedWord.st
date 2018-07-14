as yet unclassified
dismissCurrentDisplayedWord

	self inputText ~= '' ifTrue: [
		self keyArray removeFirst.
		self displayCurrentWrongWord]