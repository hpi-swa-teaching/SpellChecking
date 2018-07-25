initialize-release
setUp

	correctionUI := SPCCorrectionUI new. 
	spellchecker := SPCSpellChecker instance.
	
	wrongWord := 'squeack'.
	textWithMistakes := 'Manny miscakes in the texxt.'