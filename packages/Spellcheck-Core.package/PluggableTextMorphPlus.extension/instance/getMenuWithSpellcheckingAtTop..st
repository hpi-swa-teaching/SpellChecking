*Spellcheck-Core
getMenuWithSpellcheckingAtTop: oldMenu
"MenuItem are always added at the end. This allows us to add items at the top"

	| newMenu |
	newMenu := MenuMorph new defaultTarget: self model.
	newMenu := self handleSpellCheckingMenuItems: newMenu.
	oldMenu items do: [:item| newMenu addMenuItem: item].
	^ newMenu
	