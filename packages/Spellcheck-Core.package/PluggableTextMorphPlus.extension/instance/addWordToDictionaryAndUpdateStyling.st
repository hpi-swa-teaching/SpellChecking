*Spellcheck-Core
addWordToDictionaryAndUpdateStyling

	self styler spellChecker addWordToDictionary: (self textMorph editor selection string).
	self styler style: self textMorph contents
