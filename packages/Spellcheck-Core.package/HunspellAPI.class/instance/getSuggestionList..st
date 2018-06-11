private
getSuggestionList: aString

	| list |
	list := HunspellSuggestList externalNew.
	list listSize: (self apiSuggest: apiHandle list: list word: aString).
	^ list