*Spellcheck-Core
addSpellcheckingMenuItems: aMenu word: aString
	| spellchecker suggestedWords firstThreeSuggestedWords newListSize|
	spellchecker := SpellChecker new.
	(spellchecker isSpelledCorrectly:  aString)
		ifFalse: [ 
			suggestedWords := spellchecker suggestionsFor: aString.
			newListSize := 3 min: suggestedWords size.
			firstThreeSuggestedWords := suggestedWords  copyFrom: 1 to: newListSize . 
			firstThreeSuggestedWords
				do: [ :suggestedWord | 
					aMenu
						add: suggestedWord
						target: self
						selector: #replaceSelectionWith:
						argument: suggestedWord ].
			].
		
	^ aMenu.