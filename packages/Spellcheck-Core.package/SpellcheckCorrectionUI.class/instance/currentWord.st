accessing
currentWord

	inputText isEmpty 
		ifTrue: [^''] 
		ifFalse: [^inputText string copyFrom: self startIndex to: self endIndex]