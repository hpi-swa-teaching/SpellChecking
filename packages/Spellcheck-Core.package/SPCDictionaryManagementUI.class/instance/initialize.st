initialize-release
initialize
	
	self spellchecker: SPCSpellChecker instance.
	self selectUsedLanguage.
	SPCSpellChecker registerObserver: self.
	"SHow currently loaded languages."
	self changed: #loadedLanguages