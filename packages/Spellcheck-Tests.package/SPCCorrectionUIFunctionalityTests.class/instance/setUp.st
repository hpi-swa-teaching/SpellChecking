initialize-release
setUp
	super setUp.
	correctionUI := SPCCorrectionUI new. 
	spellchecker := SPCSpellChecker instance.
	
	wrongWord := 'squeack'.
	textWithMistakes := 'Manny miscakes in the texxt.'.
	SPCSpellChecker loadedLanguages: SPCHunspellLanguage default.
	workspace := Workspace new.