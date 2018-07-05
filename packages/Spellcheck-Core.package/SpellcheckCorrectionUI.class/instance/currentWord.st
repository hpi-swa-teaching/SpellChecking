accessing
currentWord

	inputText 
		ifEmpty: [^''] 
		ifNotEmpty: [^inputText string copyFrom: self startIndex to: self endIndex]