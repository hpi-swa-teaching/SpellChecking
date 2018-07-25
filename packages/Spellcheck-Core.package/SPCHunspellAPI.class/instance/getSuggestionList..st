private
getSuggestionList: aString

	| list |
	list := SPCHunspellSuggestList externalNew.
	list listSize: (self apiSuggest: self apiHandle list: list word: aString).
	^ list