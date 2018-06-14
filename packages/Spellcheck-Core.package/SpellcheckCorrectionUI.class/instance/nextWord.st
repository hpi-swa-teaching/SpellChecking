as yet unclassified
nextWord
	
	(keyArray size = iterateIndex) ifTrue: [
		iterateIndex := 1.] ifFalse: [ 
	iterateIndex := iterateIndex +1].
	self wrongWordText: (inputText string copyFrom: (keyArray at: iterateIndex) to: (valueArray at: iterateIndex)).
	
	
	"isNextWord := false.

	inputText ~= '' ifTrue: [
		currentKey := wrongWords keys detect: [ :key | 
			isNextWord ifTrue: [true] 
			ifFalse: [
				key = currentKey  ifTrue: [isNextWord := true].
				false]]. 
		
		self wrongWordText: (inputText string copyFrom: currentKey to: (wrongWords at: currentKey))
	]"
		"wrongWords removeKey: currentKey."
		"
		currentKey := wrongWords keys detect: [ :a | true ] ifNone: [self clear. ^self]. ""gets first element"
		"self wrongWordText: (inputText string copyFrom: currentKey to: (wrongWords at: currentKey))]"