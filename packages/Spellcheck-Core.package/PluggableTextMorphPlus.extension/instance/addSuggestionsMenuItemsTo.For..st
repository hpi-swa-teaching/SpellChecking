*Spellcheck-Core
addSuggestionsMenuItemsTo: aMenu For: aCollection
	aCollection
		do: [ :suggestedWord | 
			aMenu
				add: suggestedWord
				target: self
				selector: #replaceSelectionWith:
				argument: suggestedWord].
		aMenu addLine.