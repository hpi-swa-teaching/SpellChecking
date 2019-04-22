private
freeSuggestionList: aSuggestionList

	aSuggestionList listSize ifNil: [Error signal: 'no list size specified'].
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ self apiFreeSuggestsLinux: self apiHandle list: aSuggestionList  size: aSuggestionList listSize ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ self apiFreeSuggestsWindows: self apiHandle list: aSuggestionList  size: aSuggestionList listSize ]