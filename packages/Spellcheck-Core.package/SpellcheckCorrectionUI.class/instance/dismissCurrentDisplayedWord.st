as yet unclassified
dismissCurrentDisplayedWord

	inputText ~= '' ifTrue: [
		keyArray removeFirst.
		self displayCurrentWrongWord]