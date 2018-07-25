accessing
currentWord

	self inputText 
		ifEmpty: [^ ''] 
		ifNotEmpty: [^ self inputText string copyFrom: self startIndex to: self endIndex]