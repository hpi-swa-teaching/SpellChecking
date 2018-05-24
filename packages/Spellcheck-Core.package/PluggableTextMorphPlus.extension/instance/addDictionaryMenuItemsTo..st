*Spellcheck-Core
addDictionaryMenuItemsTo: aMenu

	aMenu 
		add: 'add to dictionray'
		target: self 
		selector: #addWordToDictionaryAndUpdateStyling.
	aMenu addLine.