*Spellcheck-Core
addWordToDictionaryAndUpdateStyling

	styler spellChecker addWordToDictionary: (self textMorph editor selection string).
	styler style: textMorph contents.
