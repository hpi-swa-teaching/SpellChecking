private
getSuggestionList: aString

	| list |
	list := HunspellSuggestList externalNew.
	list listSize: (self apiSuggest: self apiHandle list: list word: aString).
	^ list