as yet unclassified
displayCurrentWrongWord

	keyArray isEmpty ifTrue: [self clear. ^self].
	currentKey := keyArray first. 
	self wrongWordText: (parser getSentenceContextOfWordAt: currentKey within: inputText string)
	"self wrongWordText: (inputText string copyFrom: currentKey to: (wrongWords at: currentKey))"
	