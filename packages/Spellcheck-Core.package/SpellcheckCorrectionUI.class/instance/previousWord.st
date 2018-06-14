as yet unclassified
previousWord
	
	(1 = iterateIndex) ifTrue: [
		iterateIndex := valueArray size.] ifFalse: [ 
	iterateIndex := iterateIndex -1].
	self wrongWordText: (inputText string copyFrom: (keyArray at: iterateIndex) to: (valueArray at: iterateIndex)).