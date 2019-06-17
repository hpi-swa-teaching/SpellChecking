dictionary loading
selectUsedLanguage

	self availableLanguages: self usedLanguage.
	(1 to: self availableLanguages size) do: [ :index|
		self selectedLanguageAt: index put: false	
	]