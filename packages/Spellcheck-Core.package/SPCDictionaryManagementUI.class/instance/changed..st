dictionary loading
changed: aSymbol
	| indexOfCurrentLanguage |
	Transcript showln: 'Called with ', aSymbol.
	(aSymbol = #loadedLanguages) ifTrue: [
			self selectedLanguageIndices keys do: [ :key | self selectedLanguageIndices at: key put: false ].
			self spellchecker loadedLanguages do: [ :language|
				indexOfCurrentLanguage := self availableLanguages indexOf: language languageName ifAbsent: [ ^ self ].
				self selectedLanguageIndices at: indexOfCurrentLanguage put: true.
				self changed: #selectedLanguage.
			]
	]
	ifFalse: [
		super changed: aSymbol
	] 
	