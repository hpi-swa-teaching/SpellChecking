initialize-release
setUp

	correctionUI := SpellcheckCorrectionUI new. 
	spellchecker := SpellChecker instance.
	spellchecker reloadHunspellHandle.
	
	wrongWord := 'squeack'.
	textWithMistakes := 'Manny miscakes in the texxt.'