private
getSuggestionList: aString

	| list |
	list := SPCHunspellSuggestList externalNew.
	Smalltalk os platformName asLowercase = 'unix' ifTrue: [ list listSize: (self apiSuggestLinux: self apiHandle list: list word: aString) ].
	Smalltalk os platformName asLowercase = 'win32' ifTrue: [ list listSize: (self apiSuggestWindows: self apiHandle list: list word: aString) ].
	Smalltalk os platformName asLowercase = 'macos' ifTrue: [ list listSize: (self apiSuggestOSX: self apiHandle list: list word: aString) ].
	^ list