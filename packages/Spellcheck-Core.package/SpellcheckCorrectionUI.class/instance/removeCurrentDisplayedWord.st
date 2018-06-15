as yet unclassified
removeCurrentDisplayedWord

	inputText ~= '' ifTrue: [
		keyArray removeFirst.
		self displayCurrentWrongWord]