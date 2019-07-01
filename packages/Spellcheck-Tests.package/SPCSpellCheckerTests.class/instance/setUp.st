initialize-release
setUp
	super setUp.
	spellChecker := SPCSpellChecker instance.
	wrongWord := 'squeack'.
	textWithMistake := 'A text with a miscake'.
	wrongWordStartIndex := 15.
	wrongWordEndIndex := 21.
	germanWord := 'Essens'.
	englishWord := 'foods'.
	loadedLanguages := SPCSpellChecker loadedLanguages.
	addedWords := spellChecker addedWords.