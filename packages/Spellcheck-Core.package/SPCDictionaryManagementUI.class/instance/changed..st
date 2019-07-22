dictionary loading
changed: aSymbol

	| indexOfCurrentLanguage present |
	
	(aSymbol = #loadedLanguages) ifTrue: [
			self selectedLanguageIndices keys do: [ :key | self selectedLanguageIndices at: key put: false ].
			self spellchecker loadedLanguages do: [ :language|
				present := true.
				indexOfCurrentLanguage := self availableLanguages indexOf: language languageName ifAbsent: [ present := false ].
				present ifTrue:[
					self selectedLanguageIndices at: indexOfCurrentLanguage put: true.
					self changed: #selectedLanguage
				]
			]
	]
	ifFalse: [
		super changed: aSymbol
	] 
	