initialize-release
setUp

	correctionUI := SpellcheckCorrectionUI new. 
	spellchecker := SpellChecker instance.
	
	wrongWord := 'squeack'.
	textWithMistakes := 'Manny miscakes in the texxt.'