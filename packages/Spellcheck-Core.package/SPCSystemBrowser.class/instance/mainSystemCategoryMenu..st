spellchecking
mainSystemCategoryMenu: menu
	| newMenu |
	newMenu := super mainSystemCategoryMenu: menu.
	^ newMenu addList: #(
			-
			('check Spelling'			checkPackageSpelling));
		yourself
