private
next
	selectedIndex := 0.
	inputText ~= '' ifTrue: [
		wrongWords removeKey: currentKey.
		currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. "gets first element"
		currentWord := inputText string copyFrom: currentKey to: (wrongWords at: currentKey).
		parser := SpellingTextParser new.
		self wrongWordText: (parser getSentenceContextOfWordAt: currentKey within: inputText string).].