testing
testShowsActiveLanguages
	"Will be reset to default languages."
	SPCSpellChecker loadedLanguages: nil.
	ui := SPCDictionaryManagementUI new.
	self deny:  (self getLanguageEnabled: SPCHunspellLanguage german languageName inUI: ui).
	SPCSpellChecker instance loadLanguage: SPCHunspellLanguage german.
	self assert:  (self getLanguageEnabled: SPCHunspellLanguage german languageName inUI: ui).