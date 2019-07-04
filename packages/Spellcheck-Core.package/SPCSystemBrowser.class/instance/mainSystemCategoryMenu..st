spellchecking
mainSystemCategoryMenu: menu
	| newMenu |
	newMenu := super mainSystemCategoryMenu: menu.
	SPCTextStyler spellCheckingEnabled ifTrue: [
		newMenu addList: #(
			-
			('check Spelling'			checkPackageSpelling))
	].
	^ newMenu
