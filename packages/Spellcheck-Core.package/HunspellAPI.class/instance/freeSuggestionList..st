private
freeSuggestionList: aSuggestionList

	aSuggestionList listSize ifNil: [Error signal: 'no list size specified'].
	self apiFreeSuggests: handle list: aSuggestionList  size: aSuggestionList listSize