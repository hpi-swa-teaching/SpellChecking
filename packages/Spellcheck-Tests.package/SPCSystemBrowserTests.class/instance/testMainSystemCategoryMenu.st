as yet unclassified
testMainSystemCategoryMenu
	| browser menu |
	browser := SPCSystemBrowser new.
	menu := browser mainSystemCategoryMenu: CustomMenu new.
	self assert: (menu selections includes: #checkPackageSpelling)