*Spellcheck-Core
addSpellcheckingMenuItems: aMenu word: aString
	| spellchecker suggestedWords firstThreeSuggestedWords |
	spellchecker := SpellChecker new.
	(spellchecker isSpelledCorrectly:  aString)
		ifFalse: [ 
			suggestedWords := spellchecker suggestionsFor: aString.
			firstThreeSuggestedWords := suggestedWords  copyFrom: 1 to: 3 . "maybe check if the list is >3"
			firstThreeSuggestedWords
				do: [ :suggestedWord | 
					aMenu
						add: suggestedWord
						target: self
						selector: #replaceSelectionWith:
						argument: suggestedWord ].
			].
		
	^ aMenu.