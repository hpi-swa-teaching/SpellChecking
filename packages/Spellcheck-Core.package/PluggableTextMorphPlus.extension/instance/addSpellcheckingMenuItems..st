*Spellcheck-Core
addSpellcheckingMenuItems: aMenu
	| spellchecker suggestedWords firstThreeSuggestedWords newListSize selectedText |
	spellchecker := self styler spellChecker.
	selectedText := (self textMorph editor selection) asString.
	(spellchecker isSpelledCorrectly:  selectedText)
		ifFalse: [ 
			suggestedWords := spellchecker suggestionsFor: selectedText.
			newListSize := 3 min: suggestedWords size.
			firstThreeSuggestedWords := suggestedWords  copyFrom: 1 to: newListSize . 
			self addSuggestionsMenuItemsTo: aMenu For: firstThreeSuggestedWords.
			self addDictionaryMenuItemsTo: aMenu
		].
		
	^ aMenu.