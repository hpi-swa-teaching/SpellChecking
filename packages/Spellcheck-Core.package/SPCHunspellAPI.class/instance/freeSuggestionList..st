private
freeSuggestionList: aSuggestionList
	
	aSuggestionList listSize ifNil: [Error signal: 'no list size specified'].
	(self class libraryExists  and: [ self class handleNotNil]) ifTrue: [
		self apiFreeSuggests: self apiHandle list: aSuggestionList  size: aSuggestionList listSize
	]