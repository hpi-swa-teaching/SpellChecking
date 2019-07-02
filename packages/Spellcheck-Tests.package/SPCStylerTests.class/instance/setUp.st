initialize-release
setUp
	super setUp.
	spellingStyler := SPCTextStylerTests new.
	correctionUIStyler := SPCCorrectionUIStyler new.
	textWithMistake := 'There is a miscake int the text.' asText.
	textWithoutMistake := 'a := 5.' asText.
	wrongWordIndex := 12.
	originalTheme := UserInterfaceTheme current.
	SPCSpellChecker instance parser parseStringsOnly: false.
	