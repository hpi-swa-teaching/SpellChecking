*Spellcheck-Core
addDictionaryMenuItemsTo: aMenu

	aMenu 
		add: 'add to dictionary'
		target: self 
		selector: #addWordToDictionaryAndUpdateStyling.
	aMenu addLine.