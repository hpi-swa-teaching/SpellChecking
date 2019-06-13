dictionary loading
unloadLanguage
	| language languageName languagesToLoad |
	languagesToLoad := OrderedCollection new.
	(self selectedLanguageIndices) ifNotNil: [
		self selectedLanguageIndices associationsDo: [ : anAssociation |
			anAssociation value ifTrue: [
				languageName := self availableLanguages at: (anAssociation key).
				language := SPCHunspellLanguage new.
				language affixPath: (self affixPath: languageName).
				language dictionaryPath: (self dictionaryPath:languageName).
				languagesToLoad add: language.
			]
		].
		languagesToLoad do: [: languageToLoad |
			(self spellchecker loadedLanguages) do: [ :each | (each = languageToLoad) ifTrue: [ self spellchecker loadedLanguages remove: languageToLoad ] ].
		].
		self spellchecker reloadHunspellHandle;
			reloadAddedWords.
		]