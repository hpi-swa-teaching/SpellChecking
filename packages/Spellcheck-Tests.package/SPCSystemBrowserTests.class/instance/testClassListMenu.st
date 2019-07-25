as yet unclassified
testClassListMenu
	| browser menu |
	browser := SPCSystemBrowser new.
	menu := browser classListMenu: CustomMenu new.
	self assert: (menu selections includes: #checkMethodSpelling)