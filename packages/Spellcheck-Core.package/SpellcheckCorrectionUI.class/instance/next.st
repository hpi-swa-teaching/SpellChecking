as yet unclassified
next

	inputText ~= '' ifTrue: [
		wrongWords removeKey: currentKey.
		currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. "gets first element"
		self wrongWordText: (inputText string copyFrom: currentKey to: (wrongWords at: currentKey))]