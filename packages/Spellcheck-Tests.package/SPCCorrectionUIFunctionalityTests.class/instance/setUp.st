initialize-release
setUp
	"super setUp not called because not all tests need it."
	correctionUI := SPCCorrectionUI new. 
	spellchecker := SPCSpellChecker instance.
	
	wrongWord := 'squeack'.
	textWithMistakes := 'Manny miscakes in the texxt.'.
	SPCSpellChecker loadedLanguages: SPCHunspellLanguage default.
	workspace := Workspace new.