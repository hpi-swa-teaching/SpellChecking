testing
testShowsActiveLanguages
	"Will be reset to default languages."
	| dictionaryUI |
	SPCSpellChecker loadedLanguages: nil.
	dictionaryUI := SPCDictionaryManagementUI new.
	self deny:  (dictionaryUI selectedLanguageIndices at: [ui availableLanguages indexOf: [ SPCHunspellLanguage german languageName] value ] value ).
	SPCSpellChecker instance loadLanguage: SPCHunspellLanguage german.
	self assert:  (dictionaryUI selectedLanguageIndices at: [ui availableLanguages indexOf: [ SPCHunspellLanguage german languageName] value ] value ).