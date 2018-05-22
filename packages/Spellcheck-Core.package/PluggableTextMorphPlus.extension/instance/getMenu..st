*Spellcheck-Core
getMenu: shiftKeyState
	"Answer the menu for this text view. We override the superclass implementation to
	so we can give the selection interval to the model."
	
	| word |
	getMenuSelector == nil ifTrue: [^ nil].
	getMenuSelector numArgs < 3 
	ifTrue: [
		word := (self textMorph editor selection) asString withBlanksCondensed asLowercase.
		^ self addSpellcheckingMenuItems: (super getMenu: shiftKeyState) word: word.
	]
	ifFalse: [
		super getMenu: shiftKeyState.
	].