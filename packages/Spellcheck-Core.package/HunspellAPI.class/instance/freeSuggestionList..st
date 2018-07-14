private
freeSuggestionList: aSuggestionList

	aSuggestionList listSize ifNil: [Error signal: 'no list size specified'].
	self apiFreeSuggests: self apiHandle list: aSuggestionList  size: aSuggestionList listSize