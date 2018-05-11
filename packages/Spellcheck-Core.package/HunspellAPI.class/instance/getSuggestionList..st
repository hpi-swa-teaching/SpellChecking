private
getSuggestionList: aString

	| list |
	list := HunspellSuggestList externalNew.
	list listSize: (self apiSuggest: handle list: list word: aString).
	^ list