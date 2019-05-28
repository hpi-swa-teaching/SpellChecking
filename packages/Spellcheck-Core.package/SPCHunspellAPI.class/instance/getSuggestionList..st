private
getSuggestionList: aString

	| list |
	list := SPCHunspellSuggestList externalNew.
	(self class libraryExists  and: [ self class handleNotNil]) ifTrue: [
	list listSize: (self apiSuggest: self apiHandle list: list word: aString).
	].
	^ list