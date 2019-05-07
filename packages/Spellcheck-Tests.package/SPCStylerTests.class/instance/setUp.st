initialize-release
setUp
	super setUp.
	spellingStyler := SPCTextStylerTests new.
	correctionUIStyler := SPCCorrectionUIStyler new.
	textWithMistake := 'There is a miscake int the text.' asText.
	wrongWordIndex := 12
	