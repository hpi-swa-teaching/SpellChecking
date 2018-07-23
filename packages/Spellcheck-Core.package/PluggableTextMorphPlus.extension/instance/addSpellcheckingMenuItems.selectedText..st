*Spellcheck-Core
addSpellcheckingMenuItems: aMenu selectedText: selectedText

	| suggestedWords firstThreeSuggestedWords newListSize |
	
	suggestedWords := self styler spellChecker suggestionsFor: selectedText.
	newListSize := 3 min: suggestedWords size.
	firstThreeSuggestedWords := suggestedWords  copyFrom: 1 to: newListSize . 
	self addSuggestionsMenuItemsTo: aMenu For: firstThreeSuggestedWords;
		 addDictionaryMenuItemsTo: aMenu