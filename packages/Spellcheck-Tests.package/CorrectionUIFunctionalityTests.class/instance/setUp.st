initialize-release
setUp
	correctionUI := SpellcheckCorrectionUI new. 
	spellchecker := SpellChecker instance clearIgnoredWords.
	spellchecker reloadHunspellHandle