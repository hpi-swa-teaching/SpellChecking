*Spellcheck-Core-override
addModelItemsToWindowMenu: aMenu 
	
	aMenu addLine.
	aMenu
		add: 'Open Spellchecker'
		target: self
		action: #openSpellcheckerUI.

	self addOriginalModelItemsToWindowMenu: aMenu
