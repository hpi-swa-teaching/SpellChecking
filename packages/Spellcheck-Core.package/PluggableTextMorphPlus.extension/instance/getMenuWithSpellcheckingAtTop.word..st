*Spellcheck-Core
getMenuWithSpellcheckingAtTop: oldMenu word: aString
"MenuItem are always added at the end. This allows us to add items at the top"
	| newMenu |
	newMenu := MenuMorph new defaultTarget: model.
	newMenu := self addSpellcheckingMenuItems: newMenu word: aString.
	oldMenu items do: [:item| newMenu addMenuItem: item].
	^ newMenu
	