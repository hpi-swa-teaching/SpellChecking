accessing
availableLanguages
	availableLanguages ifNil: [ availableLanguages := OrderedCollection new ].
	^ availableLanguages