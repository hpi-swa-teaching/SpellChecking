as yet unclassified
testMenuWithSpellingAtTop
	| menu spellChecker selection topSuggestion |
	menu := pluggableTextMorphPlus getMenuWithSpellcheckingAtTop:  (MenuMorph new defaultTarget: pluggableTextMorphPlus model).
	selection := pluggableTextMorphPlus textMorph editor selection string.
	spellChecker := SpellChecker new.
	topSuggestion := (spellChecker suggestionsFor: selection) first.
	self assert: ((menu items collect: [:item | item contents]) includes: topSuggestion).
	self assert: ((menu items collect: [:item | item contents]) includes: 'add to dictionary').