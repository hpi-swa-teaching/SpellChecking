*Spellcheck-Core
handleSpellCheckingMenuItems: aMenu

	| spellchecker selectedText |
	spellchecker := self styler spellChecker.
	selectedText := (self textMorph editor selection) asString.
	(spellchecker isSpelledCorrectly:  selectedText)
		ifFalse: [self addSpellcheckingMenuItems: aMenu selectedText: selectedText].
		
	^ aMenu