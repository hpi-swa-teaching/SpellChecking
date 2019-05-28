spellchecking
classListMenu: aMenu 
	super classListMenu: aMenu.
	SPCTextStyler spellCheckingEnabled ifTrue: [
		aMenu addList: #(
			-
			('check spelling'				checkMethodSpelling)).
	].
	^ aMenu