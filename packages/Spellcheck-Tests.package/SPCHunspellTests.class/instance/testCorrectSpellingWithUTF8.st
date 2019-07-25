testing
testCorrectSpellingWithUTF8 
	SPCSpellChecker instance loadLanguage: SPCHunspellLanguage german.
	self assert: (hunspell isWordCorrect: unicodeWord)