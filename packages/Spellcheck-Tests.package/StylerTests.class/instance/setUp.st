initialize-release
setUp

	spellingStyler := SpellingTextStylerTestStub new.
	correctionUIStyler := SpellcheckCorrectionTextStyler new.
	textWithMistake := 'There is a miscake int the text.' asText.
	wrongWordIndex := 12
	