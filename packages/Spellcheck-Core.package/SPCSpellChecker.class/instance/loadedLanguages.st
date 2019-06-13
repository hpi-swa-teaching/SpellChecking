accessing
loadedLanguages
	self class loadedLanguages ifNil: [
		self loadedLanguages: SPCHunspellLanguage default.
		
		"(SPCHunspellLanguage default) do: [ :each | 
			self loadedLanguages add: each. ]."
	 ].
	^ self class loadedLanguages