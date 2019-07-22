initialize-release
initialize
	
	self spellchecker: SPCSpellChecker instance.
	self selectUsedLanguage.
	SPCSpellChecker registerObserver: self.
	"So the list of languages is refreshed."
	self changed: #loadedLanguages